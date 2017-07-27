package no.spid.payment.mock.paymentmock.mockedresponse;

import org.springframework.data.repository.CrudRepository;

public interface MockedResponseRepository extends CrudRepository<MockedResponse, Long> {

    MockedResponse findByKey(String key);
}