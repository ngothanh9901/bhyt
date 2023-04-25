package com.example.bhxh.service;

import com.example.bhxh.model.User;
import com.example.bhxh.util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

public class InsuranceService {
    public double caculation (int id) throws SQLException, ClassNotFoundException {
        Connection con = DbUtil.initializeDatabase();
        String sql = "SELECT percent FROM config WHERE id = ?;";

        PreparedStatement st = con.prepareStatement(sql);

        st.setInt(1,id);

        ResultSet rs= st.executeQuery();
        while(rs.next()){
            double pre = rs.getDouble(1);
            return pre;
        }
        return 0;
    }
}
