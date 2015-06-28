package billparser;

import billparser.mvc.BillController;
import billparser.mvc.IndexController;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

/**
 * Created by Tom on 28/06/2015.
 */
public class BillControllerTest {

    @InjectMocks
    private BillController bill;

    private MockMvc mockMvc;

    @Before
    public void setup()
    {
        MockitoAnnotations.initMocks(this);

        mockMvc = MockMvcBuilders.standaloneSetup(bill).build();
    }

    @Test
    public void test() throws Exception
    {
        mockMvc.perform(get("/showbill")
        )
                .andExpect(status().isOk())
                .andExpect(view().name("bill"));
    }
}
