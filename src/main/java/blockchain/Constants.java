package blockchain;

import com.amazon.ion.system.IonSystemBuilder;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.dataformat.ion.IonObjectMapper;
import com.fasterxml.jackson.dataformat.ion.ionvalue.IonValueMapper;

public class Constants {

    public static final String LEDGER_NAME = "wood-tracker-2";
    public static final String TREE_TABLE = "Tree";
    public static final String WOOD_CHUNK_TABLE = "WoodChunk";
    public static final IonObjectMapper MAPPER = new IonValueMapper(IonSystemBuilder.standard().build());

    private Constants() { }

    static {
        MAPPER.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
    }

}