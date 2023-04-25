package com.example.bhxh.service;

import com.example.bhxh.model.User;
import com.example.bhxh.util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AuthenService {
    public User login(String username, String password){
        try {
            Connection con = DbUtil.initializeDatabase();
            String sql = "SELECT * FROM user WHERE username = ? AND password = ?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1,username);
            ps.setString(2,password);

            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                int id = rs.getInt(1);
                String fullname = rs.getString(2) ;
                String phoneNumber = rs.getString(3);
                String birthday = rs.getString(4);
                String un =  rs.getString(5) ;
                String pass = rs.getString(6);
                int domestic = rs.getInt(7);
                long salary = rs.getLong(8);
                String citizen = rs.getString(9);
                int role = rs.getInt(10);

                User user = new User(id, fullname,phoneNumber,birthday,un,pass,domestic,salary,citizen,role);
                return user;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
