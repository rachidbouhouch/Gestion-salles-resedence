package com.example.gestionsallesresedence.Dao;

import com.example.gestionsallesresedence.BDSingleton.BDSingleton;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DaoUserImpl implements DaoUser{
    @Override
    public boolean check(String email, String password, String type) throws SQLException {
        Connection conn = BDSingleton.getConn();
        ResultSet res=null;
        if(type.equals("client")){
            PreparedStatement pstm = conn.prepareStatement("select * from client where email=? and password=?");
            pstm.setString(1, email);
            pstm.setString(2, password);
            res = pstm.executeQuery();

        }else{
            System.out.println("admin");
        }
        if (res.next()) {
            return true;
        } else return false;

    }
}
