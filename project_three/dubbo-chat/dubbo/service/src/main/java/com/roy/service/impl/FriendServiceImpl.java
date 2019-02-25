package com.roy.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.roy.mapper.FriendsInfoMapper;
import com.roy.model.FriendsInfo;
import com.roy.model.FriendsInfoExample;
import com.roy.service.FriendService;
import com.roy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.*;

@Service(interfaceClass = FriendService.class) //dubbo的service，注入接口
@Component //spring注解，扫描包
public class FriendServiceImpl implements FriendService {
    @Autowired
    private FriendsInfoMapper friendsInfoMapper;

    @Autowired
    private UserService userService;


    @Override
    public int addFriend(Long qno, Long fno, Long sid) {
        FriendsInfoExample example = new FriendsInfoExample();
        FriendsInfoExample.Criteria criteria = example.createCriteria();
        criteria.andQnoEqualTo(qno);
        criteria.andFnoEqualTo(fno);
        List<FriendsInfo> friendsInfos = friendsInfoMapper.selectByExample(example);
        FriendsInfo friendsInfo = new FriendsInfo();
        if(friendsInfos.size() == 1 ){
            friendsInfo = friendsInfos.get(0);
            friendsInfo.setAttach("1");
            friendsInfo.setAddTime(new Date());
            friendsInfo.setSid(sid);
            return friendsInfoMapper.updateByPrimaryKeySelective(friendsInfo);
        }
        friendsInfo.setQno(qno);
        friendsInfo.setFno(fno);
        friendsInfo.setSid(sid);
        return friendsInfoMapper.insertSelective(friendsInfo);
    }


    /**
     *  根据账号获取好友分组信息
     * @param   qno
     * @return  List 好友分组信息
     */
    @Override
    public List selectFriendsByQno(Long qno) {

        List<FriendsInfo> friendsInfos = friendsInfoMapper.selectFriendsByQno(qno);
        if( friendsInfos.size() > 0 ) {
            List result = new ArrayList();
            Map<String, Object> friendMap = new HashMap();
            FriendsInfo info = new FriendsInfo();
            List<FriendsInfo> infoList = new ArrayList<>();
            for (int i = 0; i < friendsInfos.size(); i++) {
                info = friendsInfos.get(i);
                String name = userService.findUserByQno(info.getFno()).getNickName();
                info.setFriendName(name);
                if (infoList.size() > 0) {
                    if (info.getSid() == (infoList.get(0).getSid()) && i < friendsInfos.size() - 1) {//判断好友是否是同一分组
                        infoList.add(info);
                    } else if (info.getSid() == (infoList.get(0).getSid()) && i == friendsInfos.size() - 1) {//判断好友是否是同一分组
                        infoList.add(info);
                        friendMap.put("friendName",infoList.get(0).getSubGroup().getSname());
                        friendMap.put("lists", infoList);
                        result.add(friendMap);
                    }else {
                        friendMap.put("friendName",infoList.get(0).getSubGroup().getSname());
                        friendMap.put("lists", infoList);
                        result.add(friendMap);
                        friendMap = new HashMap<>();
                        //不同分组，重新创建 ArrayList，用于记录相同分组的好友信息
                        infoList = new ArrayList<>();
                        infoList.add(info);
                        if (i == friendsInfos.size() - 1) {//为最后一位好友分组
                            friendMap.put("friendName",infoList.get(0).getSubGroup().getSname());
                            friendMap.put("lists", infoList);
                            result.add(friendMap);
                        }
                    }
                } else {
                    infoList.add(info);
                    if (i == friendsInfos.size() - 1) {//为最后一位好友分组
                        friendMap.put("friendName",infoList.get(0).getSubGroup().getSname());
                        friendMap.put("lists", infoList);
                        result.add(friendMap);
                    }
                }
            }
            return result;
        }
        return null;
    }


    @Override
    public int modifyFriendSubByFid(Long fid, Long sid) {
        FriendsInfo friendsInfo = new FriendsInfo();
        friendsInfo.setFid(fid);
        friendsInfo.setSid(sid);
        return friendsInfoMapper.updateByPrimaryKeySelective(friendsInfo);
    }

    @Override
    public int removeFriendByFid(Long fid, String state) {
        FriendsInfo friendsInfo = new FriendsInfo();
        friendsInfo.setFid(fid);
        friendsInfo.setAttach(state);
        return friendsInfoMapper.updateByPrimaryKeySelective(friendsInfo);
    }
}
