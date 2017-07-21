package no.spid.payment.mock.paymentmock;

import org.springframework.data.repository.CrudRepository;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface MockedResponseRepository extends CrudRepository<MockedResponse, Long> {

}