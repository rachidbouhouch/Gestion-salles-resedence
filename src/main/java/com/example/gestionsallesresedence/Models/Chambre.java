package com.example.gestionsallesresedence.Models;

public class Chambre {
    private int id;
    private String typeChambre;
    private int nombreLit;
    private int evalution;
    private int nombrePersonne;
    private double prixParjour;
    private String EtatChambre;
    private String imagePath;

    public Chambre(String typeChambre, int nombreLit, int evalution, int nombrePersonne, double prixParjour, String etatChambre, String imagePath) {
        this.typeChambre = typeChambre;
        this.nombreLit = nombreLit;
        this.evalution = evalution;
        this.nombrePersonne = nombrePersonne;
        this.prixParjour = prixParjour;
        EtatChambre = etatChambre;
        this.imagePath = imagePath;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypeChambre() {
        return typeChambre;
    }

    public void setTypeChambre(String typeChambre) {
        this.typeChambre = typeChambre;
    }

    public int getNombreLit() {
        return nombreLit;
    }

    public void setNombreLit(int nombreLit) {
        this.nombreLit = nombreLit;
    }

    public int getEvalution() {
        return evalution;
    }

    public void setEvalution(int evalution) {
        this.evalution = evalution;
    }

    public int getNombrePersonne() {
        return nombrePersonne;
    }

    public void setNombrePersonne(int nombrePersonne) {
        this.nombrePersonne = nombrePersonne;
    }

    public double getPrixParjour() {
        return prixParjour;
    }

    public void setPrixParjour(double prixParjour) {
        this.prixParjour = prixParjour;
    }

    public String getEtatChambre() {
        return EtatChambre;
    }

    public void setEtatChambre(String etatChambre) {
        EtatChambre = etatChambre;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
}
