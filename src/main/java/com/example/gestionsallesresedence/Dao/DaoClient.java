package com.example.gestionsallesresedence.Dao;

import com.example.gestionsallesresedence.Models.Client;

import java.util.ArrayList;

public interface DaoClient  {
    public boolean update(Client client);
    public boolean delete(int id);
    public boolean add(Client client);
    public int count();
    public Client get(String email);
    public boolean changePassword(String email ,String newPassword);
    public ArrayList<Client> getAll();
}
