package com.kafka.consumer;

import java.time.Duration;
import java.util.Collections;
import java.util.Properties;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;

import com.google.gson.Gson;
import com.kafka.dao.OrderDAO;
import com.kafka.model.Order;

public class KafkaConsumerService {

    public static void main(String[] args) {

        Properties props = new Properties();

        props.put("bootstrap.servers", "localhost:9092");
        props.put("group.id", "order-group-1");
        props.put("key.deserializer",
                "org.apache.kafka.common.serialization.StringDeserializer");
        props.put("value.deserializer",
                "org.apache.kafka.common.serialization.StringDeserializer");
        props.put("auto.offset.reset", "earliest");

        KafkaConsumer<String, String> consumer = new KafkaConsumer<>(props);

        consumer.subscribe(Collections.singletonList("orders"));

        Gson gson = new Gson();

        System.out.println("Kafka Consumer Started...");

        while (true) {

            ConsumerRecords<String, String> records =
                    consumer.poll(Duration.ofMillis(1000));

            for (ConsumerRecord<String, String> record : records) {

                System.out.println("--------------------------------");
                System.out.println("Message Received : " + record.value());

                try {

                    Order order = gson.fromJson(record.value(), Order.class);

                    OrderDAO dao = new OrderDAO();

                    boolean status = dao.saveOrder(order);

                    if (status) {
                        System.out.println("Order Saved Successfully In Database");
                    } else {
                        System.out.println("Order Not Saved");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }

                System.out.println("--------------------------------");
            }
        }
    }
}