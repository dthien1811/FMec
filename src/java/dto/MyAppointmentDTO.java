/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.Date;

/**
 *
 * @author My Computer
 */
public class MyAppointmentDTO {
    private int id;
    private String doctorName;
    private String statusName;
    private String note;
    private Date startDate;
    private Date endDate;

    public MyAppointmentDTO() {
    }

    public MyAppointmentDTO(int id, String doctorName, String statusName, String note, Date startDate, Date endDate) {
        this.id = id;
        this.doctorName = doctorName;
        this.statusName = statusName;
        this.note = note;
        this.startDate = startDate;
        this.endDate = endDate;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
    
    
}
