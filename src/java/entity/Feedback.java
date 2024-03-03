/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author My Computer
 */
public class Feedback {
    private int id;
    private User patient;
    private User doctor;
    private String content;

    public Feedback() {
    }

    public Feedback(int id, User patient, User doctor, String content) {
        this.id = id;
        this.patient = patient;
        this.doctor = doctor;
        this.content = content;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getPatient() {
        return patient;
    }

    public void setPatient(User patient) {
        this.patient = patient;
    }

    public User getDoctor() {
        return doctor;
    }

    public void setDoctor(User doctor) {
        this.doctor = doctor;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
    
}
