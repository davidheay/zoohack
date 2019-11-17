/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Clases.Ubicacion;
import Utilidades.Persistencia;
import blockchain.Blockchain;
import java.io.IOException;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author deha1
 */
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Blockchain blockchain = Blockchain.getInstance();
        System.out.println(blockchain.executeQuery("select * from Ruta"));
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuNom = request.getParameter("usu");
        String pass = request.getParameter("pas");
        System.out.println(usuNom);
        System.out.println(pass);
        request.setAttribute("usu", usuNom);

        if (request.getParameter("usu") != null) {

            if (usuNom.equals("admin") && pass.equals("admin")) {
                System.out.println("aaaa");
                Persistencia persistencia = Persistencia.getInstance();
                persistencia.getUbicaciones().add(new Ubicacion("2.012366", "-72.643937"));
                persistencia.getUbicaciones().add(new Ubicacion("3.173404", "-73.241263"));
                persistencia.getUbicaciones().add(new Ubicacion("4.924138", "-74.454607"));
                persistencia.getUbicaciones().add(new Ubicacion("4.898224", "-74.446883"));
                persistencia.getUbicaciones().add(new Ubicacion("4.885876", "-74.441780"));
                persistencia.getUbicaciones().add(new Ubicacion("4.881068", "-74.437174"));
                persistencia.getUbicaciones().add(new Ubicacion("4.871289", "-74.433943"));
                persistencia.getUbicaciones().add(new Ubicacion("4.854227", "-74.416125"));

                request.getRequestDispatcher("/ConsultaRuta").forward(request, response);

            } else {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
