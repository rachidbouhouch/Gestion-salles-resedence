package com.example.gestionsallesresedence.Dao;

import com.example.gestionsallesresedence.Models.Chambre;
import com.example.gestionsallesresedence.Models.Client;

import java.util.ArrayList;

public interface DaoChambre {
    public ArrayList<Chambre> getListChambresSingle();
    public ArrayList<Chambre> getListChambresFamily();
    public ArrayList<Chambre> getAllNotReserved();
    public boolean ReserverChambre(Chambre chambre,int idClient,String dateDebut,double priceTotale,int duree);
    public void updateEtatChambreInit();
    public Chambre getChambreById(int id);


}
