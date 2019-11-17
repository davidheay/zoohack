package Clases;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Arbol {

    String id;
    String qr;
    double latitud;
    double longitud;
    double volumen;
    
    @JsonCreator
    public Arbol(@JsonProperty String id,
                 @JsonProperty String qr, 
                 @JsonProperty double latitud,
                 @JsonProperty double longitud,
                 @JsonProperty double volumen) {
        super();
        this.id = id;
        this.qr = qr;
        this.latitud = latitud;
        this.longitud = longitud;
        this.volumen = volumen;
    }

    @JsonProperty
    public String getId() {
        return id;
    }

    @JsonProperty
    public String getQr() {
        return qr;
    }

    @JsonProperty
    public double getLatitud() {
        return latitud;
    }

    @JsonProperty
    public double getLongitud() {
        return longitud;
    }

    @JsonProperty
    public double getVolumen() {
        return volumen;
    }
    
}
