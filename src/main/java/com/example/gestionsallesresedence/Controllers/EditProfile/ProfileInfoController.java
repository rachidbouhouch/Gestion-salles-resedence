package com.example.gestionsallesresedence.Controllers.EditProfile;

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

@WebServlet("/profileinfo")
public class ProfileInfoController extends HttpServlet {
     private DaoClient DaoClient;
     //private String PasswordUSer;
    @Override
    public void init() throws ServletException {
        DaoClient = new DaoClientImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = req.getSession().getAttribute("type").toString();
        String email = req.getSession().getAttribute("email").toString();
        Client client;

        if (type.equals("client")){
            client = DaoClient.get(email);
            req.getSession().setAttribute("nom",client.getNom());
            req.getSession().setAttribute("prenom",client.getPrenom());
            req.setAttribute("pays",client.getPays());
            req.setAttribute("ville",client.getVille());
            req.setAttribute("telephone",client.getTelephone());
            req.setAttribute("cin",client.getCin());
            req.setAttribute("addresse",client.getAdresse());
            req.setAttribute("username",client.getUsername());
            //PasswordUSer = client.getPassword();

        }else {
            System.out.println("admin");
        }
        req.getRequestDispatcher("profile-info.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean tmp =false;
        String nom = req.getParameter("nom");
        String prenom = req.getParameter("prenom");
        String cin = req.getParameter("cin");
        String pays = req.getParameter("pays");
        String ville = req.getParameter("ville");
        String telephone = req.getParameter("telephone");
        Client client = new Client(
                req.getParameter("nom"),
                req.getParameter("prenom"),
                req.getParameter("cin"),
                req.getParameter("email"),
                req.getParameter("telephone"),
                req.getParameter("addresse"),
                req.getParameter("ville"),
                req.getParameter("pays"),
                req.getParameter("nom")+" "+req.getParameter("nom"),
                req.getParameter("nom")+""+req.getParameter("nom"),
                "");
                tmp= DaoClient.update(client);
                if (tmp){
                    System.out.println("updated");
                    resp.sendRedirect("/Gestion_salles_resedence_war_exploded/profileinfo");
                }
                else {
                    System.out.println("not updated");
                }
    }

}
