package com.roy.controller;

import com.roy.model.RespBean;
import com.roy.model.UserInfo;
import com.roy.service.LRService;
import com.roy.service.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

@RestController
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;
    @Resource
    private LRService lrService;


    ////////////////////   User      //////////////////////////////

    @GetMapping("/toRegist")
    public RespBean toRegist(){
        Long qno = lrService.maxQno()+1;
        return RespBean.ok("账号为：",qno);
    }


    @PostMapping("/doRegist")
    public RespBean doRegist(@RequestBody UserInfo userInfo) {
        try {
            if(userInfo.getQno() != null) {
                int result = lrService.addUser(userInfo);
                if (result > 0) {
                    return RespBean.ok("注册成功，可以去登录啦！");
                }
            }
            return RespBean.error("注册失败，请稍后重试！");
        } catch (InvalidKeySpecException e) {
            e.printStackTrace();
            return RespBean.error("服务器被挤爆了，请稍后重试！");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return RespBean.error("服务器被挤爆了，请稍后重试！");
        }
    }

    @RequestMapping("/login_p")
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    public RespBean login() {
        return RespBean.error("尚未登录，请登录!");
    }

    @PostMapping("/doLogin")
    public RespBean doLogin(@RequestParam("qno") Long qno, HttpSession session) {

//            UserInfo userInfo = lrService.checkLogin(qno,pwd);
        UserInfo userInfo = new UserInfo();
        String s = String.valueOf(qno);
        if(s.trim().matches("^[0-9]*$")){
            userInfo = (UserInfo) lrService.loadUserByUsername(s);
        }
            if(userInfo != null) {
                session.setAttribute(String.valueOf(userInfo.getQno()),userInfo);
                return RespBean.ok("登录成功", userInfo);
            }
            return RespBean.warn("登录失败，用户名或密码错误！");

    }

    @GetMapping("/getUser/{qno}")
    public RespBean getUser(@PathVariable("qno")Long qno) {
        UserInfo userInfo = userService.findUserByQno(qno);
        if( userInfo != null ) {
            return RespBean.ok("查询成功", userInfo);
        }
        return RespBean.warn("不存在该账号");
    }

    /**
     * 修改用户信息，但不修改用户密码
     * @param userInfo
     * @return
     */
    @PutMapping("/modifyUser")
    public RespBean modifyUser(@RequestBody UserInfo userInfo){
        userInfo.setPassword(null);
        int result = 0;
        try {
            result = userService.modifyUserByQno(userInfo);
            if( result > 0 ){
                return RespBean.ok("用户信息修改成功");
            }
        } catch (InvalidKeySpecException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return RespBean.error("用户信息修改失败");
    }

    /**
     * 修改用户密码
     * @param qno
     * @param oldP  旧密码
     * @param newP  新密码
     * @return
     */
    @PutMapping("/modifyPassword")
    public RespBean modifyPassword(@RequestParam("qno") Long qno,
                                   @RequestParam("oldPwd")String oldP,
                                   @RequestParam("newPwd")String newP){
        try {
            UserInfo userInfo = lrService.checkLogin(qno,oldP);
            if(userInfo != null){
                userInfo.setPassword(newP);
                int result = userService.modifyUserByQno(userInfo);
                if( result > 0 ){
                    return RespBean.ok("密码修改成功");
                }
            }
            return RespBean.warn("密码修改失败，用户名或密码错误！");
        } catch (InvalidKeySpecException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return RespBean.error("修改密码失败");
    }

    @DeleteMapping("/delUser/{qno}")
    public RespBean delUser(@PathVariable("qno")Long qno) {
        int result = userService.delUserByQno(qno);
        if( result > 0 ){
            return RespBean.ok("用户删除成功");
        }
        return RespBean.error("用户删除失败");
    }


}
