/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Lenovo
 */
public class User {
    private String majorId;
    private String role;
    private String address;
    private String avatar;
    private String name;
    private String phone;
    private String email;
    private String password;

    public User() {
    }

    public User(String majorId, String role, String address, String avatar, String name, String phone, String email, String password) {
        this.majorId = majorId;
        this.role = role;
        this.address = address;
        this.avatar = avatar;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.password = password;
    }

    public String getMajorId() {
        return majorId;
    }

    public void setMajorId(String majorId) {
        this.majorId = majorId;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    

    @Override
    public String toString() {
        return "User{" + "majorId=" + majorId + ", role=" + role + ", address=" + address + ", avatar=" + avatar + ", name=" + name + ", phone=" + phone + ", email=" + email + ", password=" + password + '}';
    }

    
}