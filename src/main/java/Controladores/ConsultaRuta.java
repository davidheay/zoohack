/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

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
public class ConsultaRuta extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Persistencia persistencia = Persistencia.getInstance();
        request.setAttribute("lstUbicaciones", persistencia.getUbicaciones());
        request.getServletContext().getRequestDispatcher("/adminVistaRuta.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Persistencia persistencia = Persistencia.getInstance();
        request.setAttribute("lstUbicaciones", persistencia.getUbicaciones());
        request.getServletContext().getRequestDispatcher("/adminVistaRuta.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
