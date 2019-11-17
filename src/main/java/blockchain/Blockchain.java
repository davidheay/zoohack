package blockchain;

import com.amazonaws.regions.Regions;
import com.amazonaws.services.qldb.AmazonQLDB;
import com.amazonaws.services.qldb.AmazonQLDBClientBuilder;

public class Blockchain {

    private AmazonQLDB client;
    
    public Blockchain() {
        client = AmazonQLDBClientBuilder.standard()
                .withRegion(Regions.US_EAST_1)
                .build();
    }
    
    

}
