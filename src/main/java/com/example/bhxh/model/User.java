package com.example.bhxh.model;

public class User {
    private int id;
    private String fullname;
    private String phoneNumber;
    private String birthday;
    private String username;
    private String password;
    private int domestic;
    private long  salary;
    private String citizen;
    private int role;

    public User(int id, String fullname, String phoneNumber, String birthday, String username, String password, int domestic, long salary, String citizen, int role) {
        this.id = id;
        this.fullname = fullname;
        this.phoneNumber = phoneNumber;
        this.birthday = birthday;
        this.username = username;
        this.password = password;
        this.domestic = domestic;
        this.salary = salary;
        this.citizen = citizen;
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", fullname='" + fullname + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", birthday='" + birthday + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", domestic=" + domestic +
                ", salary=" + salary +
                ", citizen='" + citizen + '\'' +
                ", role=" + role +
                '}';
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
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

    public long getSalary() {
        return salary;
    }

    public void setSalary(long salary) {
        this.salary = salary;
    }

    public String getCitizen() {
        return citizen;
    }

    public void setCitizen(String citizen) {
        this.citizen = citizen;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
