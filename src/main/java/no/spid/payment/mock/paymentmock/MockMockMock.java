package no.spid.payment.mock.paymentmock;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * Created by magdalena.gawel on 19/07/17.
 */
@RestController
@EnableWebMvc
public class MockMockMock {

    @Autowired // This means to get the bean called mockedResponseRepository
    private MockedResponseRepository mockedResponseRepository;

}
