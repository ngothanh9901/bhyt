package com.example.bhxh.service;

import com.example.bhxh.payload.RegisterPayload;
import com.example.bhxh.payload.UpdatePayload;
import com.example.bhxh.util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService {
    public String registerUser(RegisterPayload payload){
        try {
            Connection con = DbUtil.initializeDatabase();
            String sql = "INSERT INTO user (fullname,phone_number,birthday,username,password,domestic_labor,salary,citizen_identification,role) VALUES " +
                    "(?,?,?,?,?,?,?,?,?)";



            String check = "SELECT * FROM user WHERE username = ? or citizen_identification = ?";
            PreparedStatement st = con.prepareStatement(check);
            st.setString(1,payload.getUsername());
            st.setString(2,payload.getIdentification());
            ResultSet rs= st.executeQuery();
            while(rs.next()) return "username hoặc CMND/CCCD đã tồn tại";



            st = con.prepareStatement(sql);


            st.setString(1,payload.getFullname());
            st.setString(2,payload.getPhoneNumber());
            st.setString(3,payload.getBirthDay());
            st.setString(4,payload.getUsername());
            st.setString(5,payload.getPassword());
            st.setInt(6,payload.getDomestic());
            st.setDouble(7,payload.getSalary());
            st.setString(8,payload.getIdentification());
            st.setInt(9,0);


            st.executeUpdate();

            st.close();
            con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return "Thêm dữ liệu thành công";
    }

    public String updateUser(UpdatePayload payload,int id) throws SQLException, ClassNotFoundException {
            Connection con = DbUtil.initializeDatabase();
            String sql = "UPDATE user SET fullname = ?,birthday = ?, password = ?,salary = ? WHERE id = ?;";

            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1,payload.getFullname());
            st.setString(2,payload.getBirthDay());
            st.setString(3,payload.getPassword());
            st.setDouble(4,payload.getSalary());
            st.setInt(5,id);


            st.executeUpdate();

            st.close();
            con.close();

        return "Cập nhật  dữ liệu thành công";
    }
}
