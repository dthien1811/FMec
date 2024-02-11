/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Lenovo
 */
public class EmailLog {
    private int id;
    private String to;
    private String subject;
    private String content;

    public EmailLog() {
    }

    public EmailLog(int id, String to, String subject, String content) {
        this.id = id;
        this.to = to;
        this.subject = subject;
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "EmailLog{" + "id=" + id + ", to=" + to + ", subject=" + subject + ", content=" + content + '}';
    }
    
    
}
