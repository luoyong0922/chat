package com.roy.service;

import com.roy.model.ChatInfo;

import java.util.List;

public interface ChatOneToOneService {

    int sendMsg(ChatInfo chatInfo);

    List<ChatInfo> getMsgByPage(Long sno, Long rno, Integer page, Integer size);

    int markRead(Long sendQno, Long reciveQno);
}
