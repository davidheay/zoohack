package main;

import java.util.Arrays;
import java.util.List;

import com.amazon.ion.IonStruct;

import Clases.Ruta;
import blockchain.Blockchain;
import blockchain.Constants;

public class Main {

    public static void main(String[] args) {
        Blockchain bc = Blockchain.getInstance();
        bc.addRutas(Arrays.asList(new Ruta("RUT002",1,43.4321,-21.432489)));
        List<IonStruct> result = bc.executeQuery("select * from " + Constants.RUTA_TABLE);
        for(IonStruct ion: result) {
            System.out.println(ion.get("latitud") + " " + ion.get("longitud"));
        }
    }

}
