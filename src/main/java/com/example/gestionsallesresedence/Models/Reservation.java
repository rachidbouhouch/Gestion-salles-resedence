package com.example.gestionsallesresedence.Models;

import java.sql.Date;
import java.sql.Time;

public class Reservation {
    private int id;
    private int idChambre;
    private int idClient;
    private String DateDebut;
    private String DateFin;
    private int dureeSejour;
    private int nombrePersonne;
    private double priceTotal;
    private boolean etat;

    public Reservation(int idChambre, int idClient, String dateDebut, String dateFin, int dureeSejour, int nombrePersonne, double priceTotal, boolean etat) {
        this.idChambre = idChambre;
        this.idClient = idClient;
        DateDebut = dateDebut;
        DateFin = dateFin;
        this.dureeSejour = dureeSejour;
        this.nombrePersonne = nombrePersonne;
        this.priceTotal = priceTotal;
        this.etat = etat;
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

    public String getDateFin() {
        return DateFin;
    }

    public void setDateFin(String dateFin) {
        DateFin = dateFin;
    }

    public int getDureeSejour() {
        return dureeSejour;
    }

    public void setDureeSejour(int dureeSejour) {
        this.dureeSejour = dureeSejour;
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

    public boolean isEtat() {
        return etat;
    }

    public void setEtat(boolean etat) {
        this.etat = etat;
    }
}
