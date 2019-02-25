package com.roy.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.roy.mapper.UserInfoMapper;
import com.roy.model.UserInfo;
import com.roy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

/**
 * rpc服务接口实现类
 */
@Service(interfaceClass = UserService.class) //dubbo的service，注入接口
@Component //spring注解，扫描包
public class UserServiceImpl implements UserService{
    @Autowired
    private UserInfoMapper mapper;
    @Override
    public UserInfo findUserByQno(Long qno) {
        UserInfo userInfo = mapper.selectByPrimaryKey(qno);
        return userInfo;
    }

    @Override
    public int modifyUserByQno(UserInfo userInfo) throws InvalidKeySpecException, NoSuchAlgorithmException {
        if(userInfo.getPassword() != null){
//            String encryptedPwd = PasswordHash.createHash(userInfo.getPassword());
//            userInfo.setPassword(encryptedPwd);
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            String encode = encoder.encode(userInfo.getPassword());
            userInfo.setPassword(encode);
        }
        int result = mapper.updateByPrimaryKeySelective(userInfo);
        return result;
    }

    @Override
    public int delUserByQno(Long qno) {
        int result = mapper.deleteByPrimaryKey(qno);
        return result;
    }

}
