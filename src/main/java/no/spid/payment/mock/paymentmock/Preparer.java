package no.spid.payment.mock.paymentmock;

import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by magdalena.gawel on 19/07/17.
 */
public class Preparer {

    @Autowired // This means to get the bean called mockedResponseRepository
    private MockedResponseRepository mockedResponseRepository;


    public Iterable<MockedResponse> getAllUsers() {
        // This returns a JSON or XML with the users
        System.out.println("--------------------------------------++------------------------------------");
        System.out.println(mockedResponseRepository);
        return mockedResponseRepository.findAll();
    }

}
