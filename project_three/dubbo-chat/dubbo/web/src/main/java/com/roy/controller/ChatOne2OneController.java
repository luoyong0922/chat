package com.roy.controller;

import com.roy.model.ChatInfo;
import com.roy.model.RespBean;
import com.roy.service.ChatOneToOneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/chato2o")
public class ChatOne2OneController {
    @Autowired
    private ChatOneToOneService chatOneToOneService;

    @GetMapping("/getAloneMsgs")
    public List<ChatInfo> getAloneMsgs(@RequestParam(value = "rid") Long rid,
                                        @RequestParam(value = "sid") Long sid,
                                        @RequestParam(value = "page", defaultValue = "1") Integer page,
                                        @RequestParam(value = "size", defaultValue = "10") Integer size){

        return chatOneToOneService.getMsgByPage(sid, rid, page, size);
    }

    @PostMapping("/sendAloneMsg")
    public RespBean sendAloneMsg(ChatInfo chatInfo){
        if( chatOneToOneService.sendMsg(chatInfo) == 1){
            return RespBean.ok("发送成功!");
        }
        return RespBean.error("发送失败!");
    }

}
