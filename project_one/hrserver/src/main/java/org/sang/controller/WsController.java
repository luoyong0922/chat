package org.sang.controller;

import org.sang.bean.ChatMsg;
import org.sang.bean.ChatResp;
import org.sang.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import java.security.Principal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * WebSocket 消息处理类
 * Created by sang on 2018/1/27.
 */
@Controller
public class WsController {
    @Autowired
    SimpMessagingTemplate messagingTemplate;

    @MessageMapping("/ws/chat")
    public void handleChat(Principal principal, String msg) throws ParseException {
        String destUser = msg.substring(0, msg.indexOf(";"));//接收方用戶名
        String num = msg.substring(msg.lastIndexOf(";") + 1, msg.length());//接收方id
        String message =  msg.substring(msg.indexOf(";")+1,msg.length()-num.length()-1);

        ChatMsg chatMsg = new ChatMsg();
        if(!"".equals(num) && num != null) {
            Long rid = Long.parseLong(num);
            chatMsg.setReceivid(rid);
        }
        chatMsg.setMessage(message);
        chatMsg.setSendUserName(principal.getName());
        chatMsg.setReceivedUserName(destUser);

        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(currentTime);
        Date dateParse = formatter.parse(dateString);
        chatMsg.setSendtime(dateParse);//發送時間
        System.out.println(chatMsg);
        System.out.println("handleChat is running!");
        messagingTemplate.convertAndSendToUser(destUser, "/queue/chat", chatMsg);
//        messagingTemplate.convertAndSendToUser(destUser, "/queue/chat", new ChatResp(message, principal.getName()));
    }

    @MessageMapping("/ws/nf")
    @SendTo("/topic/nf")
    public String handleNF() {
        return "系统消息";
    }
}