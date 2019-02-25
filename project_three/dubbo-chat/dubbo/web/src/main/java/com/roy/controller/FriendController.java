package com.roy.controller;

import com.roy.model.RespBean;
import com.roy.service.FriendService;
import com.roy.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/friend")
public class FriendController {

    @Autowired
    private FriendService friendService;

    //////////////////////  Friend   ///////////////////////////

    @PostMapping("/addFriend")
    public RespBean addFriend(@RequestParam(name = "qno") Long qno, @RequestParam("fno") Long fno,
                              @RequestParam(value = "sid") Long sid){
        int result = friendService.addFriend(qno,fno,sid);
        if( result > 0 ){
            return RespBean.ok("好友添加成功");
        }
        return RespBean.error("好友添加失败");
    }
    // 将好友信息分组放到map中
    @GetMapping("/getFriend/{qno}")
    public RespBean getFriends(@PathVariable("qno")Long qno) {
//        List friends = friendService.selectFriendsByQno(qno);
        List friends = friendService.selectFriendsByQno(UserUtils.getCurrentUser().getQno());
        if( friends.size() > 0 ){
            return RespBean.ok("查询成功", friends);
        }
        return RespBean.ok("暂无好友信息！");
    }

    @PutMapping("/modifyFriendSub")
    public RespBean modifyFriendSub(@RequestParam("fid") Long fid, @RequestParam("sid") Long sid){
        int result = friendService.modifyFriendSubByFid(fid,sid);
        if( result > 0 ){
            return RespBean.ok("好友移动成功");
        }
        return RespBean.error("好友移动失败");
    }

    @DeleteMapping("/removeFriend")
    public RespBean removeFriend(@RequestParam("fid") Long fid, @RequestParam("state") String state){
        int result = friendService.removeFriendByFid(fid,state);
        if( result > 0 ){
            return RespBean.ok("好友移除成功");
        }
        return RespBean.error("好友移除失败");
    }
}
