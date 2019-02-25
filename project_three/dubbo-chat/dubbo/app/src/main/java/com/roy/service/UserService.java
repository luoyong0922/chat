package com.roy.service;


import com.roy.model.UserInfo;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

public interface UserService {

    UserInfo findUserByQno(Long qno);

    int modifyUserByQno(UserInfo userInfo) throws InvalidKeySpecException, NoSuchAlgorithmException;

    int delUserByQno(Long qno);
}
