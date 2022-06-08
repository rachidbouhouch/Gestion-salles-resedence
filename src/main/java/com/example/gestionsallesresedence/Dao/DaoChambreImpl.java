package com.example.gestionsallesresedence.Dao;

import com.example.gestionsallesresedence.BDSingleton.BDSingleton;
import com.example.gestionsallesresedence.Models.Chambre;

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
                    System.out.println("hahahahah");
                    chambre = new Chambre(rs.getString("typeChambre"),
                            rs.getInt("nombreLit") ,
                            rs.getInt("evalution"),
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
                            rs.getInt("evalution"),
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
}
