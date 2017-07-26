package no.spid.payment.mock.paymentmock;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@RestController
@EnableWebMvc
public class OrderController {

    @Autowired // This means to get the bean called mockedResponseRepository
    private MockedResponseRepository mockedResponseRepository;
    //todo: przeniesc do konstruktora

    //GET : /api/v1/method?userId=12&status=VERIFIED
    @GetMapping(path="/api/v1/method", produces = "application/json")
    public @ResponseBody String getAllMethods(@RequestParam(value="userId", defaultValue="12") String userId, @RequestParam(value="status", defaultValue="VERIFIED") String status) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("user_12_methods_verified");
        String st = mr.getContent();
        return st;
    }

    //GET : /api/v1/user/12/wallets
    @GetMapping(path="/api/v1/user/{userId}/wallets", produces = "application/json")
    public @ResponseBody String getAllWallets(@RequestParam(value="userId", defaultValue="12") String userId) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("user_12_wallets");
        String st = mr.getContent();
        return st;
    }


    //GET : /api/v1/method/2711
    @GetMapping(path="/api/v1/method/{methodId}", produces = "application/json")
    public @ResponseBody String getMethod(@RequestParam(value="methodId", defaultValue="2711") String methodId) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("method_2711");
        String st = mr.getContent();
        return st;
    }

    //POST : /api/v1/order
    @PostMapping(path="/api/v1/order", produces = "application/json")
    public @ResponseBody String createOrder() {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("order_100207931_create");
        String st = mr.getContent();
        return st;
    }

    //POST : /api/v1/order/100207931/initialize
    @PostMapping(path="/api/v1/order/{orderId}/initialize", produces = "application/json")
    public @ResponseBody String initializeOrder(@RequestParam(value="orderId", defaultValue="100207931") String orderId) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("order_100207931_initialize");
        String st = mr.getContent();
        return st;
    }

    //POST : /api/v1/order/100207931/complete
    @PostMapping(path="/api/v1/order/{orderId}/complete", produces = "application/json")
    public @ResponseBody String completeOrder(@RequestParam(value="orderId", defaultValue="100207931") String orderId) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("order_100207931_complete");
        String st = mr.getContent();
        return st;
    }

    //GET : /api/v1/order/100207931
    @GetMapping(path="/api/v1/order/{orderId}", produces = "application/json")
    public @ResponseBody String getOrder(@RequestParam(value="orderId", defaultValue="100207931") String orderId) {
        // This returns a JSON or XML with the users
        MockedResponse mr = mockedResponseRepository.findByKey("order_100207931_get");
        String st = mr.getContent();
        return st;
    }
}