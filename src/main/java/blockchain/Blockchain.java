package blockchain;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.amazon.ion.IonValue;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.client.builder.AwsClientBuilder;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.qldb.AmazonQLDB;
import com.amazonaws.services.qldb.AmazonQLDBClientBuilder;
import com.amazonaws.services.qldbsession.AmazonQLDBSessionClientBuilder;

import Clases.Ruta;
import software.amazon.qldb.PooledQldbDriver;
import software.amazon.qldb.QldbDriver;
import software.amazon.qldb.QldbSession;
import software.amazon.qldb.Result;
import software.amazon.qldb.TransactionExecutor;

public class Blockchain {

    private AmazonQLDB client;
    private PooledQldbDriver driver;
    public String endpoint = null;
    public String region = null;
    public AWSCredentialsProvider credentialsProvider;
    private static Blockchain blockchain;
    
    public static Blockchain getInstance() {
        if(blockchain == null) {
            blockchain = new Blockchain();
        }
        return blockchain;
    }
    
    public PooledQldbDriver createQldbDriver() {
        AmazonQLDBSessionClientBuilder builder = AmazonQLDBSessionClientBuilder.standard();
        if (null != endpoint && null != region) {
            builder.setEndpointConfiguration(new AwsClientBuilder.EndpointConfiguration(endpoint, region));
        }
        if (null != credentialsProvider) {
            builder.setCredentials(credentialsProvider);
        }
        return PooledQldbDriver.builder()
                .withLedger(Constants.LEDGER_NAME)
                .withRetryLimit(Constants.RETRY_LIMIT)
                .withSessionClientBuilder(builder)
                .build();
    }
    
    /**
     * Connect to a ledger through a {@link QldbDriver}.
     *
     * @return {@link QldbSession}.
     */
    public QldbSession createQldbSession() {
        return driver.getSession();
    }    
    
    private Blockchain() {
        client = AmazonQLDBClientBuilder.standard()
                .withRegion(Regions.US_EAST_1)
                .build();
        driver = createQldbDriver();
    }
    
    /**
     * Convert the given DML result row's document ID to string.
     *
     * @param dmlResultDocument
     *              The {@link IonValue} representing the results of a DML operation.
     * @return a string of document ID.
     */
    public static String getDocumentIdFromDmlResultDocument(final IonValue dmlResultDocument) {
        try {
            DmlResultDocument result = Constants.MAPPER.readValue(dmlResultDocument, DmlResultDocument.class);
            return result.getDocumentId();
        } catch (IOException ioe) {
            throw new IllegalStateException(ioe);
        }
    }
    
    /**
     * Return a list of modified document IDs as strings from a DML {@link Result}.
     *
     * @param result
     *              The result set from a DML operation.
     * @return the list of document IDs modified by the operation.
     */
    public static List<String> getDocumentIdsFromDmlResult(final Result result) {
        final List<String> strings = new ArrayList<>();
        result.iterator().forEachRemaining(row -> strings.add(getDocumentIdFromDmlResultDocument(row)));
        return strings;
    }
    
    public List<String> insertDocuments(TransactionExecutor txn, String tableName, List documents){
        System.out.println(String.format("Insertando %d valores en la base de datos, en la tabla %s", documents.size(),tableName));
        try {
            String query = String.format("insert into %s ?", tableName);
            IonValue ionDocuments = Constants.MAPPER.writeValueAsIonValue(documents);
            List<IonValue> parameters = Collections.singletonList(ionDocuments);
            List<String> responseList = getDocumentIdsFromDmlResult(txn.execute(query,parameters));
            return responseList;
        }catch(IOException e) {
            System.out.println("No se han podido insertar los valores");
            e.printStackTrace();
            throw new IllegalStateException(e);
        }
    }
    
    public void addRuta(List<Ruta> rutas) {
        try(QldbSession qldbSession = createQldbSession()){
            qldbSession.execute(txn->{
                insertDocuments(txn, Constants.RUTA_TABLE, rutas);
            });
        }catch(IllegalStateException e) {
            throw e;
        }
    }
    
    
    

}
