package billparser.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Tom on 28/06/2015.
 */
@Controller
public class BillController {
        @RequestMapping(value = "/showbill")
        public String index()
        {
            return "bill";
        }
}
