/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Clases.Ubicacion;
import Utilidades.Persistencia;
import java.io.IOException;
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
                persistencia.getUbicaciones().add(new Ubicacion("0.224961", "-70.500848"));
                persistencia.getUbicaciones().add(new Ubicacion("0.262862", "-70.443992"));
                persistencia.getUbicaciones().add(new Ubicacion("0.247560", "-70.387855"));
                persistencia.getUbicaciones().add(new Ubicacion("0.204554", "-70.359417"));
                persistencia.getUbicaciones().add(new Ubicacion("0.156087", "-70.425764"));

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
