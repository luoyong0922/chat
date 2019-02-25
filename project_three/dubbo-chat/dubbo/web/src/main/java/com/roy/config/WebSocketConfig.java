package com.roy.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.config.annotation.AbstractWebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.server.support.DefaultHandshakeHandler;

import java.security.Principal;
import java.util.Map;

/**
 * Created by sang on 2018/1/27.
 */
@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig extends AbstractWebSocketMessageBrokerConfigurer {
    @Override
    public void registerStompEndpoints(StompEndpointRegistry stompEndpointRegistry) {
        System.out.println("registerStompEndpoints is running!");
        stompEndpointRegistry.addEndpoint("/ws/endpointChat")
                .setHandshakeHandler(new  DefaultHandshakeHandler(){
            @Override
            protected Principal determineUser(ServerHttpRequest request, WebSocketHandler wsHandler, Map<String, Object> attributes) {
                //key就是服务器和客户端保持一致的标记，一般可以用账户名称，或者是用户ID。
                System.out.println("determineUserName:"+request.getPrincipal().getName());
//                return request.getPrincipal();
                return new MyPrincipal(request.getPrincipal().getName());
            }
        })
                .withSockJS();
    }

    @Override
    public void configureMessageBroker(MessageBrokerRegistry registry) {
        System.out.println("configureMessageBroker is running!");
        registry.enableSimpleBroker("/queue","/topic");
    }

    /**
     * 自定义的Principal
     */
    class MyPrincipal implements Principal {

        private String key;

        public MyPrincipal(String key) {
            this.key = key;
        }
        @Override
        public String getName() {
            return key;
        }

    }
}
