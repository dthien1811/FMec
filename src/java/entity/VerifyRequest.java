/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Timestamp;

/**
 *
 * @author Lenovo
 */
public class VerifyRequest {
    private int id;
    private String requestContent ;
    private boolean isVerify;
    private Timestamp expired ;
    private Timestamp createAt ;
    private int userId ;
    private int emailLogId;

    public VerifyRequest() {
    }

    public VerifyRequest(int id, String requestContent, boolean isVerify, Timestamp expired, Timestamp createAt, int userId, int emailLogId) {
        this.id = id;
        this.requestContent = requestContent;
        this.isVerify = isVerify;
        this.expired = expired;
        this.createAt = createAt;
        this.userId = userId;
        this.emailLogId = emailLogId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRequestContent() {
        return requestContent;
    }

    public void setRequestContent(String requestContent) {
        this.requestContent = requestContent;
    }

    public boolean isIsVerify() {
        return isVerify;
    }

    public void setIsVerify(boolean isVerify) {
        this.isVerify = isVerify;
    }

    public Timestamp getExpired() {
        return expired;
    }

    public void setExpired(Timestamp expired) {
        this.expired = expired;
    }

    public Timestamp getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Timestamp createAt) {
        this.createAt = createAt;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getEmailLogId() {
        return emailLogId;
    }

    public void setEmailLogId(int emailLogId) {
        this.emailLogId = emailLogId;
    }

    @Override
    public String toString() {
        return "VerifyRequest{" + "id=" + id + ", requestContent=" + requestContent + ", isVerify=" + isVerify + ", expired=" + expired + ", createAt=" + createAt + ", userId=" + userId + ", emailLogId=" + emailLogId + '}';
    }
    
    

}
