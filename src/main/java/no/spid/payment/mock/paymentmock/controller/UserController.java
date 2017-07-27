package no.spid.payment.mock.paymentmock.controller;

import no.spid.payment.mock.paymentmock.mockedresponse.MockedResponse;
import no.spid.payment.mock.paymentmock.mockedresponse.MockedResponseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@RestController
@EnableWebMvc
@RequestMapping(path = "/api/v1", produces = "application/json; charset=utf-8")
public class UserController {

    @Autowired // This means to get the bean called mockedResponseRepository
    private MockedResponseRepository mockedResponseRepository;

    //GET : /api/v1/user/12/wallets
    @GetMapping(path = "/user/{userId}/wallets")
    public
    @ResponseBody
    String getAllWallets(@RequestParam(value = "userId", defaultValue = "12") String userId) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("user_12_wallets");
        String st = mr.getContent();
        return st;
    }

}