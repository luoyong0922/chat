package org.sang.service;


import org.sang.bean.ChatMsg;
import org.sang.common.HrUtils;
import org.sang.mapper.ChatMsgMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;

@Service
@Transactional
public class ChatService {

    @Autowired
    ChatMsgMapper msgMapper;


    public boolean sendMsg(ChatMsg msg) {
        int result = msgMapper.insertSelective(msg);
        return result==1;
    }

    public List<ChatMsg> getMsgByPage(Long sid, Long rid, Integer page, Integer size) {
        int start = (page - 1) * size;
        List<ChatMsg> msgs = msgMapper.selectByPage(start,size,rid,sid);
        Collections.reverse(msgs);//将list集合倒序排列取出,时间最新的在最下面
        return msgs;
    }

    public int markRead(Long rid) {

            return msgMapper.markRead(1,HrUtils.getCurrentHr().getId(),rid);

    }
}
