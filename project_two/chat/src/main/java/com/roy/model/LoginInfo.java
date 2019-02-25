package com.roy.model;

import java.util.Date;

public class LoginInfo {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column login_info.lid
     *
     * @mbg.generated
     */
    private Long lid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column login_info.lip
     *
     * @mbg.generated
     */
    private String lip;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column login_info.lport
     *
     * @mbg.generated
     */
    private Integer lport;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column login_info.qno
     *
     * @mbg.generated
     */
    private Long qno;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column login_info.login_time
     *
     * @mbg.generated
     */
    private Date loginTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column login_info.attach
     *
     * @mbg.generated
     */
    private String attach;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column login_info.lid
     *
     * @return the value of login_info.lid
     *
     * @mbg.generated
     */
    public Long getLid() {
        return lid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column login_info.lid
     *
     * @param lid the value for login_info.lid
     *
     * @mbg.generated
     */
    public void setLid(Long lid) {
        this.lid = lid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column login_info.lip
     *
     * @return the value of login_info.lip
     *
     * @mbg.generated
     */
    public String getLip() {
        return lip;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column login_info.lip
     *
     * @param lip the value for login_info.lip
     *
     * @mbg.generated
     */
    public void setLip(String lip) {
        this.lip = lip == null ? null : lip.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column login_info.lport
     *
     * @return the value of login_info.lport
     *
     * @mbg.generated
     */
    public Integer getLport() {
        return lport;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column login_info.lport
     *
     * @param lport the value for login_info.lport
     *
     * @mbg.generated
     */
    public void setLport(Integer lport) {
        this.lport = lport;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column login_info.qno
     *
     * @return the value of login_info.qno
     *
     * @mbg.generated
     */
    public Long getQno() {
        return qno;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column login_info.qno
     *
     * @param qno the value for login_info.qno
     *
     * @mbg.generated
     */
    public void setQno(Long qno) {
        this.qno = qno;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column login_info.login_time
     *
     * @return the value of login_info.login_time
     *
     * @mbg.generated
     */
    public Date getLoginTime() {
        return loginTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column login_info.login_time
     *
     * @param loginTime the value for login_info.login_time
     *
     * @mbg.generated
     */
    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column login_info.attach
     *
     * @return the value of login_info.attach
     *
     * @mbg.generated
     */
    public String getAttach() {
        return attach;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column login_info.attach
     *
     * @param attach the value for login_info.attach
     *
     * @mbg.generated
     */
    public void setAttach(String attach) {
        this.attach = attach == null ? null : attach.trim();
    }
}