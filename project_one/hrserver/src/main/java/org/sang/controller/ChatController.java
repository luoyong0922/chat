package org.sang.controller;

import com.github.pagehelper.PageInfo;
import org.sang.bean.*;
import org.sang.service.ChatService;
import org.sang.service.HrService;
import org.sang.service.SysMsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 处理通知消息的Controller
 * 登录即可访问
 */
@RestController
@RequestMapping("/chat")
public class ChatController {
    @Autowired
    HrService hrService;
    @Autowired
    SysMsgService sysMsgService;
    @Autowired
    ChatService chatService;

    @RequestMapping(value = "/hrs", method = RequestMethod.GET)
    public List<Hr> getAllHr() {
        return hrService.getAllHrExceptAdmin();
    }

    //群发消息
    @RequestMapping(value = "/nf", method = RequestMethod.POST)
    public RespBean sendNf(MsgContent msg) {
        if (sysMsgService.sendMsg(msg)) {
            return RespBean.ok("发送成功!");
        }
        return RespBean.error("发送失败!");
    }
    //单独对话
    @RequestMapping(value = "/alone", method = RequestMethod.POST)
    public RespBean sendAlone(ChatMsg msg) {
        if (chatService.sendMsg(msg)) {
            return RespBean.ok("发送成功!");
        }
        return RespBean.error("发送失败!");
    }

    @RequestMapping("/getAloneMsgs")
    public List<ChatMsg> getMsgs(@RequestParam(value = "rid") Long rid,
                                 @RequestParam(value = "sid") Long sid,
                                 @RequestParam(value = "page", defaultValue = "1") Integer page,
                                 @RequestParam(value = "size", defaultValue = "10") Integer size) {
        return chatService.getMsgByPage(sid,rid,page,size);
    }


    @RequestMapping("/sysmsgs")
    public List<SysMsg> getSysMsg(@RequestParam(value = "page", defaultValue = "1") Integer page,
                                  @RequestParam(value = "size", defaultValue = "10") Integer size) {
        return sysMsgService.getSysMsgByPage(page, size);
    }

    @RequestMapping(value = "/markread", method = RequestMethod.PUT)
    public RespBean markRead(Long flag) {
        if (sysMsgService.markRead(flag)) {
            if (flag == -1) {
                return RespBean.ok("multiple");
            } else {
                return RespBean.ok("single");
            }
        } else {
            if (flag == -1) {
                return RespBean.error("multiple");
            } else {
                return RespBean.error("single");
            }
        }
    }
}
