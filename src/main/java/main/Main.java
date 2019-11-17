package main;

import java.util.Arrays;

import Clases.Ruta;
import blockchain.Blockchain;

public class Main {

    public static void main(String[] args) {
        Blockchain bc = Blockchain.getInstance();
        bc.addRuta(Arrays.asList(new Ruta("RUT002",1,43.4321,-21.432489)));
    }

}
