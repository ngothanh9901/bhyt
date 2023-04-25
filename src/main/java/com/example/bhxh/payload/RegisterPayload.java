package com.example.bhxh.payload;

public class RegisterPayload {
    String fullname ;
    String phoneNumber ;
    String birthDay ;
    String username ;
    String password;
    int domestic ;
    long salary ;
    String identification;

    public RegisterPayload(String fullname, String phoneNumber, String birthDay, String username, String password, int domestic, long salary, String identification) {
        this.fullname = fullname;
        this.phoneNumber = phoneNumber;
        this.birthDay = birthDay;
        this.username = username;
        this.password = password;
        this.domestic = domestic;
        this.salary = salary;
        this.identification = identification;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getDomestic() {
        return domestic;
    }

    public void setDomestic(int domestic) {
        this.domestic = domestic;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(long salary) {
        this.salary = salary;
    }

    public String getIdentification() {
        return identification;
    }

    public void setIdentification(String identification) {
        this.identification = identification;
    }
}
