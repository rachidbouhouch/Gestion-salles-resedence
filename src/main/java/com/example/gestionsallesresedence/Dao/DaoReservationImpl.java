package com.example.gestionsallesresedence.Dao;

import com.example.gestionsallesresedence.BDSingleton.BDSingleton;
import com.example.gestionsallesresedence.Models.Reservation;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DaoReservationImpl implements DaoReservation {

    @Override
    public ArrayList<Reservation> getAllMyReservations(int idClient) {
        ArrayList<Reservation> reservations = new ArrayList<>();
        Reservation reservation = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sqlQuery = "SELECT * from reservation where idClient=?";


        try {
            pstmt= BDSingleton.getConn().prepareStatement(sqlQuery);
            pstmt.setInt(1, idClient);
            rs = pstmt.executeQuery();

            while (rs.next())
            {
                reservation = new Reservation(rs.getInt("idChambre"),
                        rs.getInt("idClient"),
                        rs.getString("dateDebut"),
                        rs.getInt("duree"),
                        rs.getInt("nombrePersonne")
                , rs.getDouble("priceTotale")
                 );
                reservation.setId(rs.getInt("id"));
                reservations.add(reservation);
            }
            rs.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return reservations;
    }
}
