package com.kafka.producer;
import java.util.Properties;
import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.ProducerRecord;
public class KafkaProducerService {
    private static final String TOPIC = "orders";
    private static KafkaProducer<String, String> producer;
    static {
        Properties props = new Properties();
        props.put("bootstrap.servers", "localhost:9092");
        props.put("key.serializer",
                "org.apache.kafka.common.serialization.StringSerializer");
        props.put("value.serializer",
                "org.apache.kafka.common.serialization.StringSerializer");
        props.put("acks", "all");
        props.put("retries", 3);
        producer = new KafkaProducer<>(props);
    }
    public static void sendMessage(String message) {
        try {
            ProducerRecord<String, String> record =
                    new ProducerRecord<>(TOPIC, message);
            producer.send(record, (metadata, exception) -> {
                if (exception == null) {
                    System.out.println("Message Sent Successfully");
                    System.out.println("Topic : " + metadata.topic());
                    System.out.println("Partition : " + metadata.partition());
                    System.out.println("Offset : " + metadata.offset());
                } else {
                    exception.printStackTrace();
                }
            });
            producer.flush();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void closeProducer() {
        if (producer != null) {
            producer.close();
        }
    }
}