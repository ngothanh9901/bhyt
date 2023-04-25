package com.example.bhxh.payload;

public class UpdatePayload {
    String fullname ;
    String birthDay ;
    String password;
    double salary ;

    public UpdatePayload(String fullname, String birthDay, String password, double salary) {
        this.fullname = fullname;
        this.birthDay = birthDay;
        this.password = password;
        this.salary = salary;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }
}
