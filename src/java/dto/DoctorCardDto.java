/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author My Computer
 */
public class DoctorCardDto {
    public int doctorId;
    public String doctorName;
    public String major;
    public String avatar;

    public DoctorCardDto() {
    }
    
    

    public DoctorCardDto(String doctorName, String major , int doctorId , String avatar) {
        this.doctorName = doctorName;
        this.avatar = avatar;
        this.major = major;
        this.doctorId = doctorId;
    }
    
    

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
    
    
}
