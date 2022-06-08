package com.example.gestionsallesresedence.Dao;

import java.sql.SQLException;

public interface DaoUser <T>{
    public boolean check(String email,String password,String type) throws SQLException;

}
