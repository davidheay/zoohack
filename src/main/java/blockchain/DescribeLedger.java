package blockchain;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSSessionCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.EnvironmentVariableCredentialsProvider;
import com.amazonaws.services.qldb.AmazonQLDB;
import com.amazonaws.services.qldb.model.DescribeLedgerRequest;
import com.amazonaws.services.qldb.model.DescribeLedgerResult;

/*import org.slf4j.Logger;
import org.slf4j.LoggerFactory;*/

/**
 * Describe a QLDB ledger.
 *
 * This code expects that you have AWS credentials setup per:
 * http://docs.aws.amazon.com/java-sdk/latest/developer-guide/setup-credentials.html
 */
public final class DescribeLedger {
    public static AmazonQLDB client = CreateLedger.getClient();
    //public static final Logger log = LoggerFactory.getLogger(DescribeLedger.class);

    private DescribeLedger() { }

    public static void main(final String... args) {
        try {

            describe(Constants.LEDGER_NAME);

        } catch (Exception e) {
            e.printStackTrace();
            //log.error("Unable to describe a ledger!", e);
        }
    }

    /**
     * Describe a ledger.
     *
     * @param name
     *              Name of the ledger to describe.
     * @return {@link DescribeLedgerResult} from QLDB.
     */
    public static DescribeLedgerResult describe(final String name) {
        System.out.println("Let's describe ledger with name: "+name+"...");
        DescribeLedgerRequest request = new DescribeLedgerRequest()
                                                //.setRequestCredentialsProvider(EnvironmentVariableCredentialsProvider.);
                                                //.withName(name)
                                                .withName(name)
                                                ;
                                                /*request.setRequestCredentials(new AWSCredentials() {

                                                    @Override
                                                    public String getAWSAccessKeyId() {
                                                        // TODO Auto-generated method stub
                                                        return "ASIAROTHURBPNNGT4ZOD";
                                                    }

                                                    @Override
                                                    public String getAWSSecretKey() {
                                                        // TODO Auto-generated method stub
                                                        return "988/tjN29S/KQJ4psENNnYBoSEkuumhZ8SzoAvHC";
                                                    }});*/

        DescribeLedgerResult result = client.describeLedger(request);
        System.out.println("Success. Ledger description: " + result);
        return result;
    }
}
