package com.roy.mapper;

import com.roy.model.FriendsInfo;
import com.roy.model.FriendsInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FriendsInfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    long countByExample(FriendsInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    int deleteByExample(FriendsInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Long fid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    int insert(FriendsInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    int insertSelective(FriendsInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    List<FriendsInfo> selectByExample(FriendsInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    FriendsInfo selectByPrimaryKey(Long fid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    int updateByExampleSelective(@Param("record") FriendsInfo record, @Param("example") FriendsInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    int updateByExample(@Param("record") FriendsInfo record, @Param("example") FriendsInfoExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(FriendsInfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table friends_info
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(FriendsInfo record);

    List<FriendsInfo> selectFriendsByQno(Long qno);
}