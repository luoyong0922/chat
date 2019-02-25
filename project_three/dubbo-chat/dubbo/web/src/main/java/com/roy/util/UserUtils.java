package com.roy.util;

import com.roy.model.UserInfo;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * Created by sang on 2017/12/30.
 */
public class UserUtils {
    public static UserInfo getCurrentUser() {

        System.out.println("currentUser"+SecurityContextHolder.getContext().getAuthentication().getPrincipal());

        UserInfo userInfo = (UserInfo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(userInfo.getQno() != null) {

        }
        return userInfo;
    }
}
