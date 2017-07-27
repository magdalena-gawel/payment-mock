package no.spid.payment.mock.paymentmock.controller;

import no.spid.payment.mock.paymentmock.mockedresponse.MockedResponse;
import no.spid.payment.mock.paymentmock.mockedresponse.MockedResponseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@RestController
@EnableWebMvc
@RequestMapping(path = "/api/v1", produces = "application/json; charset=utf-8")
public class MethodController {

    @Autowired // This means to get the bean called mockedResponseRepository
    private MockedResponseRepository mockedResponseRepository;

    //GET : /api/v1/method?userId=12&status=VERIFIED
    @GetMapping(path = "/method")
    public
    @ResponseBody
    String getAllMethods(@RequestParam(value = "userId", defaultValue = "12") String userId, @RequestParam(value = "status", defaultValue = "VERIFIED") String status) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("user_12_methods_verified");
        String st = mr.getContent();
        return st;
    }

    //GET : /api/v1/method/2711
    @GetMapping(path = "/method/{methodId}")
    public
    @ResponseBody
    String getMethod(@RequestParam(value = "methodId", defaultValue = "2711") String methodId) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("method_2711");
        String st = mr.getContent();
        return st;
    }

}