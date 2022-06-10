package com.example.gestionsallesresedence.Dao;

import com.example.gestionsallesresedence.BDSingleton.BDSingleton;
import com.example.gestionsallesresedence.Models.Chambre;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DaoChambreImpl implements DaoChambre {

    @Override
    public ArrayList<Chambre> getListChambresSingle() {
        ArrayList<Chambre> chambres = new ArrayList<>();
        Chambre chambre = null;
        Statement s = null;
        ResultSet rs = null;
        String sqlQuery = "SELECT * FROM chambre ";

        try
        {
            s = BDSingleton.getConn().createStatement();
            rs = s.executeQuery(sqlQuery);

            while (rs.next()) {
                if (rs.getString("typeChambre").equals("single") && rs.getString("EtatChambre").equals("nonReservé")){
                    chambre = new Chambre(rs.getString("typeChambre"),
                            rs.getInt("nombreLit") ,
                            rs.getInt("evaluation"),
                            rs.getInt("nombrePersonne"),
                            rs.getDouble("prixParjour"),
                            rs.getString("EtatChambre"),
                            rs.getString("imagePath"),
                            rs.getInt("Etage")
                            );
                    chambre.setId(rs.getInt("id"));

                    chambres.add(chambre);
                }

            }
            s.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return chambres;
    }

    @Override
    public ArrayList<Chambre> getListChambresFamily() {
        ArrayList<Chambre> chambres = new ArrayList<>();
        Chambre chambre = null;
        Statement s = null;
        ResultSet rs = null;
        String sqlQuery = "SELECT * FROM chambre ";

        try
        {
            s = BDSingleton.getConn().createStatement();
            rs = s.executeQuery(sqlQuery);

            while (rs.next()) {
                if (rs.getString("typeChambre").equals("family") && rs.getString("EtatChambre").equals("nonReservé")){
                    chambre = new Chambre(rs.getString("typeChambre"),
                            rs.getInt("nombreLit") ,
                            rs.getInt("evaluation"),
                            rs.getInt("nombrePersonne"),
                            rs.getDouble("prixParjour"),
                            rs.getString("EtatChambre"),
                            rs.getString("imagePath"),
                            rs.getInt("Etage"));
                    chambre.setId(rs.getInt("id"));
                    chambres.add(chambre);
                }

            }
            s.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return chambres;
    }

    @Override
    public ArrayList<Chambre> getAllNotReserved() {
        ArrayList<Chambre> chambres = new ArrayList<>();
        Chambre chambre;
        PreparedStatement pstmt;
        ResultSet rs = null;
        String sqlQuery = "SELECT * FROM `chambre` WHERE `etatChambre` = 'nonReservé'";

        try {
            pstmt= BDSingleton.getConn().prepareStatement(sqlQuery);
            rs = pstmt.executeQuery();

            while (rs.next())
            {
                chambre = new Chambre(rs.getString("typeChambre"),
                        rs.getInt("nombreLit") ,
                        rs.getInt("evaluation"),
                        rs.getInt("nombrePersonne"),
                        rs.getDouble("prixParjour"),
                        rs.getString("EtatChambre"),
                        rs.getString("imagePath"),
                        rs.getInt("Etage"));
                chambre.setId(rs.getInt("id"));
                chambres.add(chambre);
            }
            rs.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return chambres;
    }

    @Override
    public boolean ReserverChambre(Chambre chambre,int idClient,String dateDebut,double priceTotale,int duree) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean tmp = false;
        try
        {
            ps = BDSingleton.getConn().prepareStatement("INSERT INTO reservation(`dateDebut`, `duree`, `nombrePersonne`, `idChambre`, `idClient`, `priceTotale`) VALUES(?, ?, ?, ?, ?, ? )");
            ps.setString(1,dateDebut);
            ps.setInt(2,duree);
            ps.setInt(3,chambre.getNombrePersonne());
            ps.setInt(4,chambre.getId());
            ps.setInt(5,idClient);
            ps.setDouble(6,priceTotale);

            if (ps.executeUpdate() > 0)
            {
                System.out.println(chambre.getId());
                tmp=true;
                ps= BDSingleton.getConn().prepareStatement("UPDATE chambre SET EtatChambre = 'Reservé' WHERE id=?");
                System.out.println("reservtion inserer");
                ps.setInt(1,chambre.getId());
                if(ps.executeUpdate()> 0){
                    System.out.println("State room changed");
                }
                else {
                    System.out.println("State room not changed");
                    tmp=false;
                }
                return tmp;
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return tmp;
    }

    @Override
    public void updateEtatChambreInit() {
        PreparedStatement ps;
        try
        {
            ps= BDSingleton.getConn().prepareStatement("UPDATE `chambre` SET etatChambre = 'nonReservé' WHERE id IN ( SELECT id FROM reservation WHERE CURDATE() > DATE_ADD(dateDebut, INTERVAL duree DAY))");
            ps.executeUpdate();
            ps.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    @Override
    public Chambre getChambreById(int id) {
        Chambre chambre = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sqlQuery = "SELECT * from chambre where id=?";


        try {
            pstmt= BDSingleton.getConn().prepareStatement(sqlQuery);
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();

            if (rs.next())
            {
                chambre = new Chambre(rs.getString("typeChambre"),
                        rs.getInt("nombreLit") ,
                        rs.getInt("evaluation"),
                        rs.getInt("nombrePersonne"),
                        rs.getDouble("prixParjour"),
                        rs.getString("EtatChambre"),
                        rs.getString("imagePath"),
                        rs.getInt("Etage"));
                chambre.setId(rs.getInt("id"));
            }
            rs.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return chambre;
    }


}
