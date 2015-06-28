package billparser.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Tom on 23/06/2015.
 */
@Controller
public class IndexController {

    @RequestMapping(value = "/index")
    public String index()
    {
        return "main";
    }
}
