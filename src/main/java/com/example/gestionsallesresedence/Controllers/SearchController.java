package com.example.gestionsallesresedence.Controllers;

import com.example.gestionsallesresedence.Dao.DaoClient;
import com.example.gestionsallesresedence.Dao.DaoClientImpl;
import com.example.gestionsallesresedence.Models.Client;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/searchroom")
public class SearchController extends HttpServlet {



    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String checkin = req.getParameter("checkin");
        String checkout = req.getParameter("checkout");
        String nbrpersons=req.getParameter("numberofpersons");

        System.out.println(checkin);
        System.out.println(checkout);
        System.out.println(nbrpersons);

    }

}