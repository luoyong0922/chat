package com.roy.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.roy.mapper.ChatInfoMapper;
import com.roy.model.ChatInfo;
import com.roy.service.ChatOneToOneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;

@Service(interfaceClass = ChatOneToOneService.class) //dubbo的service，注入接口
@Component //spring注解，扫描包
public class ChatOneToOneServiceImpl implements ChatOneToOneService {
    @Autowired
    private ChatInfoMapper chatInfoMapper;

    @Override
    public int sendMsg(ChatInfo chatInfo){
        return chatInfoMapper.insertSelective(chatInfo);
    }
    @Override
    public List<ChatInfo> getMsgByPage(Long sid, Long rid, Integer page, Integer size) {
        int start = (page - 1) * size;
        List<ChatInfo> msgs = chatInfoMapper.selectByPage(start,size,rid,sid);
        Collections.reverse(msgs);//将list集合倒序排列取出
        return msgs;
    }
    @Override
    public int markRead(Long sendQno, Long reciveQno) {

        return chatInfoMapper.markRead(1,sendQno,reciveQno);

    }
}
