package no.spid.payment.mock.paymentmock;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableAutoConfiguration
public class PaymentMockApplication {

	public static void main(String[] args) {
		SpringApplication.run(PaymentMockApplication.class, args);
	}
}
