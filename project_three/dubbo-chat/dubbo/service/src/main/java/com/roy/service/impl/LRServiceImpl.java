package com.roy.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.roy.mapper.UserInfoMapper;
import com.roy.model.UserInfo;
import com.roy.model.UserInfoExample;
import com.roy.service.LRService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;

@Service(interfaceClass = LRService.class) //dubbo的service，注入接口
@Component //spring注解，扫描包
public class LRServiceImpl implements LRService {

    @Autowired
    private UserInfoMapper mapper;
    //根據Qno查詢用戶
    @Override
    public UserInfo loadUserByQno(Long qno){

        if( qno != null){
            UserInfoExample example = new UserInfoExample();
            UserInfoExample.Criteria criteria = example.createCriteria();
            criteria.andQnoEqualTo(qno);
            List<UserInfo> userInfos = mapper.selectByExample(example);
            if( userInfos.size() > 0){
                return userInfos.get(0);
            }
        }
        return null;
    }
    //驗證用戶登錄信息
    @Override
    public UserInfo checkLogin(Long qno, String pwd) throws InvalidKeySpecException, NoSuchAlgorithmException {
        UserInfo userInfo = this.loadUserByQno(qno);
        if(userInfo != null){
            String hashKey = userInfo.getPassword();
//            boolean result = PasswordHash.validatePassword(pwd,hashKey);
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            boolean result = encoder.matches(pwd,hashKey);
            if( result ){
                return userInfo;
            }
        }
        return null;
    }

    //用戶註冊
    @Override
    public int addUser(UserInfo userInfo) throws InvalidKeySpecException, NoSuchAlgorithmException {

//        String encryptedPwd = PasswordHash.createHash(userInfo.getPassword());
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String encode = encoder.encode(userInfo.getPassword());
        userInfo.setPassword(encode);
        return mapper.insertSelective(userInfo);
    }
    @Override
    public Long maxQno() {
        Long maxQno = mapper.selectMaxQno();
        return maxQno == null ? 0L : maxQno;
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        UserInfo userInfo = new UserInfo();
        if(s.trim().matches("^[0-9]*$")){
            Long qno = Long.valueOf(s);
            userInfo = this.loadUserByQno(qno);
        }
        if (userInfo == null) {
            throw new UsernameNotFoundException("用户名不对");
        }
        System.out.println("LR UserInfo:"+userInfo);
        return userInfo;
    }
}
