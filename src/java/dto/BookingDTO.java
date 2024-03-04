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
public class BookingDTO {
    private int id;
    private int doctorId;
    private int customerId;
    private int status;
    private String note;
    private Date startDate;
    private Date endDate;

    public BookingDTO() {
    }

    public BookingDTO(int id, int doctorId, int customerId, int status, String note, Date startDate, Date endDate) {
        this.id = id;
        this.doctorId = doctorId;
        this.customerId = customerId;
        this.status = status;
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

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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
