package com.example.gestionsallesresedence.Dao;

import com.example.gestionsallesresedence.BDSingleton.BDSingleton;
import com.example.gestionsallesresedence.Models.Client;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DaoClientImpl implements DaoClient{

    @Override
    public boolean update(Client client) {
        PreparedStatement ps;
        ResultSet rs = null;
        boolean tmp = false;

        try
        {
            ps= BDSingleton.getConn().prepareStatement("UPDATE client SET pays = ?, ville = ? , prenom=?,nom=? , cin=? , adresse=? , email=? , telephone=? WHERE email = ?");
            ps.setString(1, client.getPays());
            ps.setString(2, client.getVille());
            ps.setString(3, client.getPrenom());
            ps.setString(4, client.getNom());
            ps.setString(5, client.getCin());
            ps.setString(6, client.getAdresse());
            ps.setString(7, client.getEmail());
            ps.setString(8, client.getTelephone());
            ps.setString(9, client.getEmail());


                if(ps.executeUpdate() >= 1)
                {
                    tmp = true;
                }

            ps.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return tmp;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public boolean add(Client client) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean tmp = true;
        try
        {
            ps = BDSingleton.getConn().prepareStatement("INSERT INTO client(prenom, nom, cin, email, telephone, adresse, ville, pays, username, login, password) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", Statement.RETURN_GENERATED_KEYS);
            ps.setString(1,client.getPrenom());
            ps.setString(2,client.getNom());
            ps.setString(3,client.getCin());
            ps.setString(4,client.getEmail());
            ps.setString(5,client.getTelephone());
            ps.setString(6,client.getAdresse());
            ps.setString(7,client.getVille());
            ps.setString(8,client.getPays());
            ps.setString(9,client.getUsername());
            ps.setString(10,client.getLogin());
            ps.setString(11,client.getPassword());

            if (ps.executeUpdate() != 1)
            {
                System.out.println("user non inserer");
                return false;
            }
            else
            {
                rs = ps.getGeneratedKeys();

                if (rs.next())
                {
                    client.setId(rs.getInt(1));
                }
                else
                {
                    System.out.println("l'id non Recuperer");
                    return false;
                }
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return true;
    }

    @Override
    public int count() {
        return 0;
    }

    @Override
    public Client get(String email) // l'email de la table client
    {
        Client client = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sqlQuery = "SELECT * from client where email=?";


        try {
            pstmt= BDSingleton.getConn().prepareStatement(sqlQuery);
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();

            if (rs.next())
            {
                client = new Client(rs.getString("prenom"),
                        rs.getString("nom"),
                        rs.getString("cin"),
                        rs.getString("email"),
                        rs.getString("telephone"),
                        rs.getString("adresse"),
                        rs.getString("ville"),
                        rs.getString("pays"),
                        rs.getString("username"),
                        rs.getString("login"),
                        rs.getString("password")
                        );

                client.setId(rs.getInt("id"));
            }
            rs.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return client;
    }

    @Override
    public int getIdClientByEmail(String email) {
        Client client = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Integer idClient=null;
        String sqlQuery = "SELECT id from client where email=?";


        try {
            pstmt= BDSingleton.getConn().prepareStatement(sqlQuery);
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();

            if (rs.next())
            {
                idClient=rs.getInt("id");
            }
            rs.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return idClient;    }

    @Override
    public boolean changePassword(String email, String newPassword) {
        PreparedStatement ps;
        ResultSet rs = null;
        boolean tmp = false;

        try
        {
            ps= BDSingleton.getConn().prepareStatement("UPDATE client SET password = ? WHERE email = ?");
            ps.setString(1, newPassword);
            ps.setString(2, email);



            if(ps.executeUpdate() >= 1)
            {
                tmp = true;
            }

            ps.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return tmp;
    }

    @Override
    public ArrayList<Client> getAll() {
        return null;
    }
}
