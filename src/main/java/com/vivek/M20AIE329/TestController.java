package com.vivek.M20AIE329;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping(value="/")
	public String indexPage() {
		return "index";
	}

}
