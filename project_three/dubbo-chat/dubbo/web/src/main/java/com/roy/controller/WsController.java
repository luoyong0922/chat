package com.roy.controller;

import com.roy.model.ChatInfo;
import com.roy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * WebSocket 消息处理类
 * Created by sang on 2018/1/27.
 */
@Controller
public class WsController {

    /**消息发送工具*/
    @Autowired
    SimpMessagingTemplate messagingTemplate;
    @Autowired
    UserService userService;
    // 实现用户提及功能的正则表达式
    private Pattern pattern = Pattern.compile("\\@(\\S+)");


    @MessageMapping("/ws/chat")
    public void handleChat(Principal principal, String msg) throws ParseException {
        System.out.println("/ws/chat::"+msg);
        String sendQno = msg.substring(0, msg.indexOf(";"));//发送方id
        String num = msg.substring(msg.lastIndexOf(";") + 1, msg.length());//接收方id
        String message =  msg.substring(msg.indexOf(";")+1,msg.length()-num.length()-1);

        ChatInfo chatMsg = new ChatInfo();
        if(!"".equals(num) && num != null && !"".equals(sendQno) && sendQno != null) {
            Long rid = Long.parseLong(num);
            chatMsg.setReceiveQno(rid);
            Long sendId = Long.valueOf(sendQno);
            chatMsg.setSendQno(sendId);
        }
        chatMsg.setMessage(message);
        chatMsg.setSendUserName(userService.findUserByQno(Long.valueOf(principal.getName())).getNickName());

        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(currentTime);
        Date dateParse = formatter.parse(dateString);
        chatMsg.setSendTime(dateParse);//發送時間
        messagingTemplate.convertAndSendToUser(num, "/queue/chat", chatMsg);
        System.out.println("handleChat is running!");
    }


    //    如果msg 文本中包含 "@tangrong"，那么我们就应该发送一条消息给 使用 tangrong 用户名登录的client
    @MessageMapping("/ws/nf")
    @SendTo("/topic/nf")
    public String handleNF(String msg) {
        String sendQno = msg.substring(0, msg.indexOf(";"));//发送方id
        messagingTemplate.convertAndSend("/topic/spittlefeed", msg);
        Matcher matcher = pattern.matcher(msg);
        if (matcher.find()) {
            String userQno = matcher.group(1);
            // 发送提醒给用户.
            messagingTemplate.convertAndSendToUser(
                    userQno, "/queue/chat",
                    "You just got mentioned!");
        }
        return "系统消息";
    }

}