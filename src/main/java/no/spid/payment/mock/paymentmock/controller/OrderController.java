package no.spid.payment.mock.paymentmock.controller;

import no.spid.payment.mock.paymentmock.mockedresponse.MockedResponse;
import no.spid.payment.mock.paymentmock.mockedresponse.MockedResponseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@RestController
@EnableWebMvc
@RequestMapping(path = "/api/v1", produces = "application/json; charset=utf-8")
public class OrderController {

    @Autowired // This means to get the bean called mockedResponseRepository
    private MockedResponseRepository mockedResponseRepository;

    //GET : /api/v1/order/100207931
    @GetMapping(path = "/order/{orderId}")
    public
    @ResponseBody
    String getOrder(@RequestParam(value = "orderId", defaultValue = "100207931") String orderId) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("order_100207931_get");
        String st = mr.getContent();
        return st;
    }

    //POST : /api/v1/order
    // check if changing dates is required
    @PostMapping(path = "/order")
    public
    @ResponseBody
    String createOrder() {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("order_100207931_create");
        String st = mr.getContent();
        return st;
    }

    //POST : /api/v1/order/100207931/initialize
    @PostMapping(path = "/order/{orderId}/initialize")
    public
    @ResponseBody
    String initializeOrder(@RequestParam(value = "orderId", defaultValue = "100207931") String orderId) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("order_100207931_initialize");
        String st = mr.getContent();
        return st;
    }

    //POST : /api/v1/order/100207931/complete
    @PostMapping(path = "/order/{orderId}/complete")
    public
    @ResponseBody
    String completeOrder(@RequestParam(value = "orderId", defaultValue = "100207931") String orderId) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("order_100207931_complete");
        String st = mr.getContent();
        return st;
    }
}