package com.example.gestionsallesresedence.Controllers;

import com.example.gestionsallesresedence.Dao.DaoChambre;
import com.example.gestionsallesresedence.Dao.DaoChambreImpl;
import com.example.gestionsallesresedence.Dao.DaoUser;
import com.example.gestionsallesresedence.Dao.DaoUserImpl;
import com.example.gestionsallesresedence.Models.Chambre;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = { "/listchambreFamily","/listchambreSingle","/searchchambre"})
public class ChambreController extends HttpServlet {
    private DaoChambre daoChambre;
    private ArrayList<Chambre> chambres;

    @Override
    public void init() throws ServletException {
        daoChambre = new DaoChambreImpl();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        chambres = new ArrayList<>();

        if (path.equals("/listchambreFamily")) {
            chambres = daoChambre.getListChambresFamily();
            System.out.println(chambres);
            req.getSession().setAttribute("checkin", "mm/dd/yyyy");
            req.getSession().setAttribute("nbrnuits", 1);
            req.getSession().setAttribute("chambres", chambres);
            req.getRequestDispatcher("listRooms.jsp").forward(req, resp);
        }
        else if (path.equals("/listchambreSingle")){
            chambres=daoChambre.getListChambresSingle();
            req.getSession().setAttribute("checkin", "mm/dd/yyyy");
            req.getSession().setAttribute("nbrnuits", 1);
            req.getSession().setAttribute("chambres", chambres);
            System.out.println(chambres);
            req.getRequestDispatcher("listRooms.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();
        String checkin = req.getParameter("checkin");
        String nbrnuits = req.getParameter("nbrnuits");

        if (path.equals("/searchchambre")){
            chambres=daoChambre.getAllNotReserved();
            req.getSession().setAttribute("checkin", checkin);
            req.getSession().setAttribute("nbrnuits", nbrnuits);
            req.getSession().setAttribute("chambres", chambres);
            req.getRequestDispatcher("listRooms.jsp").forward(req, resp);}
    }
}
