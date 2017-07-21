package no.spid.payment.mock.paymentmock;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;


@RunWith(SpringRunner.class)
@SpringBootTest
public class OrderControllerTest {
//https://docs.spring.io/spring/docs/current/spring-framework-reference/htmlsingle/#testcontext-framework
	private MockMvc mockMvc;

	@Autowired
	OrderController orderController;

	@Autowired
	private WebApplicationContext wac;

	@Before
	public void setUp() {
		mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
	}

	@Test
	public void testCreationOfANewProjectSucceeds() throws Exception {
//		MvcResult result = mockMvc.perform(get("/orders"))
//				.andExpect(status().isOk())
//				.andExpect(content().contentType("application/json;charset=UTF-8"))
//			//	.andExpect(jsonPath("$.content").value("Test response content"))
//				.andReturn();
//
//		String content = result.getResponse().getContentAsString();
//		System.out.println("--------------------------------------------------------------------------");
//		System.out.println("--------------------------------------------------------------------------");
//		System.out.println("--------------------------------------------------------------------------");
//		System.out.println("--------------------------------------------------------------------------");
//		System.out.println(content);
	}


}
