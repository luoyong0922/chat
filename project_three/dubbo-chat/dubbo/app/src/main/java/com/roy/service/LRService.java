package com.roy.service;

import com.roy.model.UserInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

public interface LRService extends UserDetailsService{

    UserInfo loadUserByQno(Long qno);

    UserInfo checkLogin(Long qno, String pwd) throws InvalidKeySpecException, NoSuchAlgorithmException;

    int addUser(UserInfo userInfo) throws InvalidKeySpecException, NoSuchAlgorithmException;

    Long maxQno();
}
