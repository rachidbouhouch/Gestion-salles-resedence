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
import java.sql.SQLException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private DaoClient DaoClient;

    @Override
    public void init() throws ServletException {
        DaoClient = new DaoClientImpl();
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String prenom = req.getParameter("prenom");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        System.out.println(nom);
        System.out.println(prenom);
        System.out.println(email);
        System.out.println(password);


        Client client = new Client(prenom,nom,"",email,"","","","", nom+" "+prenom, nom+""+prenom,password);

            boolean res = DaoClient.add(client);
            if (res) {
                HttpSession httpSession = req.getSession(true);
                httpSession.setAttribute("prenom", prenom);
                httpSession.setAttribute("nom", nom);
                httpSession.setAttribute("email", email);
                httpSession.setAttribute("password", password);
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            } else {
                req.setAttribute("message", "L’adresse e-mail que vous avez saisi(e) est déja exist");
                req.getRequestDispatcher("register.jsp").forward(req, resp);

            }



    }
}
