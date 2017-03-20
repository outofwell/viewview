package global.sesoc.boot;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping(value = "/comu", method = RequestMethod.GET)
	public String comu() {
		return "comu";
	}
	
	@RequestMapping(value = "/hicu", method = RequestMethod.GET)
	public String hicu() {
		return "hicu";
	}
	
	@RequestMapping(value = "/testing", method = RequestMethod.GET)
	public String testing() {
		return "testing";
	}
	
}
