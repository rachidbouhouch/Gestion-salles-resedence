package com.example.gestionsallesresedence.Models;

import java.sql.Date;
import java.sql.Time;

public class Reservation {
    private int id;
    private int idChambre;
    private int idClient;
    private String DateDebut;
    private int duree;
    private int nombrePersonne;
    private double priceTotal;

    public Reservation(int idChambre, int idClient, String dateDebut, int duree, int nombrePersonne, double priceTotal) {
        this.idChambre = idChambre;
        this.idClient = idClient;
        DateDebut = dateDebut;
        this.duree = duree;
        this.nombrePersonne = nombrePersonne;
        this.priceTotal = priceTotal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdChambre() {
        return idChambre;
    }

    public void setIdChambre(int idChambre) {
        this.idChambre = idChambre;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public String getDateDebut() {
        return DateDebut;
    }

    public void setDateDebut(String dateDebut) {
        DateDebut = dateDebut;
    }

    public int getDuree() {
        return duree;
    }

    public void setDuree(int duree) {
        this.duree = duree;
    }

    public int getNombrePersonne() {
        return nombrePersonne;
    }

    public void setNombrePersonne(int nombrePersonne) {
        this.nombrePersonne = nombrePersonne;
    }

    public double getPriceTotal() {
        return priceTotal;
    }

    public void setPriceTotal(double priceTotal) {
        this.priceTotal = priceTotal;
    }
}
