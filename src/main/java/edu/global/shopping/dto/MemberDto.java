package edu.global.shopping.dto;

import java.sql.Timestamp;

public class MemberDto {
    private int customerNo;
    private String customerName;
    private String phone;
    private String address;
    private Timestamp joinDate;
    private String grade;
    private String city;

    @Override
    public String toString() {
        return "MemberDto{" +
                "customerNo=" + customerNo +
                ", customerName='" + customerName + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", joinDate=" + joinDate +
                ", grade='" + grade + '\'' +
                ", city='" + city + '\'' +
                '}';
    }

    public MemberDto(int customerNo, String customerName, String phone, String address, Timestamp joinDate, String grade, String city) {
        this.customerNo = customerNo;
        this.customerName = customerName;
        this.phone = phone;
        this.address = address;
        this.joinDate = joinDate;
        this.grade = grade;
        this.city = city;
    }

    public int getCustomerNo() {
        return customerNo;
    }

    public void setCustomerNo(int customerNo) {
        this.customerNo = customerNo;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Timestamp getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(Timestamp joinDate) {
        this.joinDate = joinDate;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
