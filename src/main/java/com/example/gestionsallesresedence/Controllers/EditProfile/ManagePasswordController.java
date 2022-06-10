package com.example.gestionsallesresedence.Controllers.EditProfile;

import com.example.gestionsallesresedence.Dao.DaoClient;
import com.example.gestionsallesresedence.Dao.DaoClientImpl;
import com.example.gestionsallesresedence.Models.Client;

import javax.servlet.HttpConstraintElement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/changepassword")
public class ManagePasswordController extends HttpServlet {
    private DaoClient DaoClient;

    @Override
    public void init() throws ServletException {
        DaoClient = new DaoClientImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("change-password.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String currentpassword = req.getParameter("currentpassword");
        String confirmPassword = req.getParameter("confirmpassword");
        String ancienpassword = req.getParameter("ancienpassword");
        String type = req.getSession().getAttribute("type").toString();
        String email = req.getSession().getAttribute("email").toString();
        String passsword = req.getSession().getAttribute("password").toString();

        System.out.println(currentpassword);
        System.out.println(confirmPassword);
        if (passsword.equals(ancienpassword)){
            System.out.println("current password equals ");
        }
        else {
            System.out.println("current password not equals ");
        }


        if (currentpassword.equals(confirmPassword)){
            System.out.println("equals");
            if (type.equals("client")){
                if (DaoClient.changePassword(email,currentpassword)){
                    System.out.println("password Changed");
                    resp.sendRedirect("/Gestion_salles_resedence_war_exploded/changepassword");

                }
                else {
                    System.out.println("password not changed");
                }
            }
            else {
                System.out.println("admin");
            }

        }
        else {
            System.out.println("not equals");
        }
        doGet(req,resp);
    }
}
