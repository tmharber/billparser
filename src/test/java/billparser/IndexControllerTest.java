package billparser;

import billparser.mvc.IndexController;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import static org.hamcrest.Matchers.is;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

/**
 * Created by Tom on 25/06/2015.
 */
public class IndexControllerTest {

    @InjectMocks
    private IndexController index;

    private MockMvc mockMvc;

    @Before public void setup()
    {
        MockitoAnnotations.initMocks(this);

        mockMvc = MockMvcBuilders.standaloneSetup(index).build();
    }

    @Test
    public void test() throws Exception
    {
        mockMvc.perform(get("/index")
        )
                .andExpect(status().isOk())
                .andExpect(view().name("main"));
    }
}
