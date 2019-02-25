package com.roy.service;

import java.util.List;

public interface FriendService {

    int addFriend(Long qno, Long fno, Long sid);

    List selectFriendsByQno(Long qno);

    int removeFriendByFid(Long fid, String state);

    int modifyFriendSubByFid(Long fid, Long sid);
}
