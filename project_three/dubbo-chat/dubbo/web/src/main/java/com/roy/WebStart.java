package com.roy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ImportResource(locations={"classpath:dubbo-consumer.xml"})
public class WebStart {

    public static void main(String[] args) {
        ApplicationContext tc = SpringApplication.run(WebStart.class, args);
//        UserService userService = tc.getBean(UserService.class);
//        System.out.println(userService.findUserByQno(2L));
    }
}
