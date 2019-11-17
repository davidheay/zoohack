/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilidades;

import Clases.Ubicacion;
import java.util.ArrayList;

/**
 *
 * @author deha1
 */
public class Persistencia {

    private static Persistencia persistencia = null;
    private ArrayList<Ubicacion> ubicaciones;

    public Persistencia() {
        this.ubicaciones = new ArrayList<Ubicacion>();
    }

    public static Persistencia getInstance() {
        if (persistencia == null) {
            persistencia = new Persistencia();
        }
        return persistencia;
    }

    public ArrayList<Ubicacion> getUbicaciones() {
        return ubicaciones;
    }

    public void setUbicaciones(ArrayList<Ubicacion> ubicaciones) {
        ubicaciones = ubicaciones;
    }

}
