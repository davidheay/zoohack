/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Clases.Ubicacion;
import Utilidades.Persistencia;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author deha1
 */
public class ConsultaAreas extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Persistencia persistencia = Persistencia.getInstance();
        request.setAttribute("lstUbicaciones", persistencia.getUbicaciones());
        request.getServletContext().getRequestDispatcher("/adminVistaArea.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Persistencia persistencia = Persistencia.getInstance();

        ArrayList<Ubicacion> ubicacions = new ArrayList<Ubicacion>();

        ubicacions.add(new Ubicacion("0.968220", "-70.497481"));
        ubicacions.add(new Ubicacion("0.750018", "-70.901079"));
        ubicacions.add(new Ubicacion("0.613029", "-70.586583"));
        ubicacions.add(new Ubicacion("0.856938", "-70.239593"));

        ArrayList<Ubicacion> ubicacions2 = new ArrayList<Ubicacion>();

        ubicacions2.add(new Ubicacion("-0.161597", "-70.961593"));
        ubicacions2.add(new Ubicacion("-0.019472", "-71.196662"));
        ubicacions2.add(new Ubicacion("0.297378", "-70.972576"));
        ubicacions2.add(new Ubicacion("0.055167", "-70.794940"));
        ubicacions2.add(new Ubicacion("-0.094248", "-70.924907"));

        ArrayList<Ubicacion> puntos = new ArrayList<Ubicacion>();
        puntos.add(new Ubicacion("0.908220", "-70.467481"));
        puntos.add(new Ubicacion("0.740018", "-70.631079"));
        puntos.add(new Ubicacion("0.803029", "-70.696583"));
        puntos.add(new Ubicacion("0.846938", "-70.619593"));

        request.setAttribute("puntos", puntos);
        request.setAttribute("lstUbicaciones1", ubicacions);
        request.setAttribute("lstUbicaciones2", ubicacions2);
        request.setAttribute("lstUbicaciones", persistencia.getUbicaciones());

        request.getServletContext().getRequestDispatcher("/adminVistaArea.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
