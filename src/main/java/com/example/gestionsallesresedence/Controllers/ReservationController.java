package com.example.gestionsallesresedence.Controllers;

import com.example.gestionsallesresedence.Dao.*;
import com.example.gestionsallesresedence.Models.Chambre;
import com.example.gestionsallesresedence.Models.Reservation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/reserver" , "/myreservations"})
public class ReservationController extends HttpServlet {
    private DaoChambre daoChambre;
    private DaoClient daoClient;
    private DaoReservation daoReservation;

    @Override
    public void init() throws ServletException {
        daoChambre = new DaoChambreImpl();
        daoClient = new DaoClientImpl();
        daoReservation = new DaoReservationImpl();
        daoChambre.updateEtatChambreInit();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        ArrayList<Reservation> myreservations = new ArrayList<>();
        int idClient = daoClient.getIdClientByEmail(req.getSession().getAttribute("email").toString());
        if (path.equals("/myreservations")){
            myreservations=daoReservation.getAllMyReservations(idClient);
            //for(Reservation reservation : myreservations){
              //  System.out.println(reservation.getIdChambre());
            //}
            req.setAttribute("myreservations",myreservations);
            req.getRequestDispatcher("showmyreservations.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        if (path.equals("/reserver")){
            if (req.getSession().getAttribute("email") == null){
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            }
            else {
                //System.out.println(req.getSession().getAttribute("nbrnuits").toString());
                // System.out.println();
                int idChambre=Integer.parseInt(req.getParameter("idChambre").toString());
                Chambre chambre = daoChambre.getChambreById(idChambre);

                int idClient=daoClient.getIdClientByEmail(req.getSession().getAttribute("email").toString());
                String dateDebut=req.getSession().getAttribute("checkin").toString();
                int duree =  Integer.parseInt(req.getSession().getAttribute("nbrnuits").toString());
                double priceTotole=chambre.getPrixParjour() * duree;
                System.out.println(priceTotole);
                System.out.println(chambre.getId());
                boolean tmp = daoChambre.ReserverChambre(chambre,idClient,dateDebut,priceTotole,duree);
                if (tmp){
                    System.out.println("Reservation succes");
                    resp.sendRedirect("/Gestion_salles_resedence_war_exploded/myreservations");
                }
                else {
                    System.out.println("Error de reservation");
                }
            }


        }




    }
}
