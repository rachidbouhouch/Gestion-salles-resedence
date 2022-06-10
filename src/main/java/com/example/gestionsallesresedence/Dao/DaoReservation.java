package com.example.gestionsallesresedence.Dao;

import com.example.gestionsallesresedence.Models.Reservation;

import java.util.ArrayList;

public interface DaoReservation {

    public ArrayList<Reservation> getAllMyReservations(int idClient);

}
