package no.spid.payment.mock.paymentmock;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@RestController
@EnableWebMvc
public class OrderController {

    @Autowired // This means to get the bean called mockedResponseRepository
    private MockedResponseRepository mockedResponseRepository;
    //todo: przeniesc do konstruktora

    @GetMapping(path="/add") // Map ONLY GET Requests
    public @ResponseBody
    String addNewUser (@RequestParam String key
            , @RequestParam String content) {
        // @ResponseBody means the returned String is the response, not a view name
        // @RequestParam means it is a parameter from the GET or POST request

        MockedResponse n = new MockedResponse();
        n.setKey(key);
        n.setContent(content);
        mockedResponseRepository.save(n);
        return "Saved";
    }

    @GetMapping(path="/all")
    public @ResponseBody Iterable<MockedResponse> getAllUsers() {
        // This returns a JSON or XML with the users
        return mockedResponseRepository.findAll();
    }
}