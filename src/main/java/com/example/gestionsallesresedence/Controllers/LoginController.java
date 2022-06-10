package com.example.gestionsallesresedence.Controllers;

import com.example.gestionsallesresedence.Dao.DaoUser;
import com.example.gestionsallesresedence.Dao.DaoUserImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Locale;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private DaoUser DaoUser;

    @Override
    public void init() throws ServletException {
        DaoUser = new DaoUserImpl();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String type=req.getParameter("radio-type");
        HttpSession httpSession=null;
        boolean connected;
        boolean res=false;

        try {
            res = DaoUser.check(email.toLowerCase(), password.toLowerCase(),type.toLowerCase());
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (res) {
            connected=true;
            httpSession = req.getSession(true);
            httpSession.setAttribute("email", email);
            httpSession.setAttribute("password", password);
            httpSession.setAttribute("connected", connected);
            httpSession.setAttribute("type", type);
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } else {
            connected=false;
            req.setAttribute("message", "L’adresse e-mail que vous avez saisi(e) n’est pas associé(e) à un compte");
            httpSession.setAttribute("connected", connected);
            req.getRequestDispatcher("login.jsp").forward(req, resp);

        }


    }
}
