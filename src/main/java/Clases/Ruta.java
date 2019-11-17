package Clases;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Ruta {

    String id;
    int num;
    double latitud;
    double longitud;
    
    @JsonCreator
    public Ruta(@JsonProperty("id") String id,
                @JsonProperty("num") int num, 
                @JsonProperty("latitud") double latitud,
                @JsonProperty("longitud") double longitud) {
        this.id = id;
        this.num = num;
        this.latitud = latitud;
        this.longitud = longitud;
    }

    @JsonProperty
    public String getId() {
        return id;
    }

    @JsonProperty
    public int getNum() {
        return num;
    }

    @JsonProperty
    public double getLatitud() {
        return latitud;
    }

    @JsonProperty
    public double getLongitud() {
        return longitud;
    }
    
    

}
