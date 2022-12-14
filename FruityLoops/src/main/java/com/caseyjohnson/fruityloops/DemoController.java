package com.caseyjohnson.fruityloops;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DemoController {
	
	@RequestMapping("/")
	public String renderDemoPage() {
		return "demo.jsp";
	}
	
	@RequestMapping ("/fruit")
	public String fruit(Model model) {
		model.addAttribute("fruit", "banana");
		return "demo.jsp";
	}
	
	// ...
    @RequestMapping("/dojos")
    public String index(Model model) {
        ArrayList<String> dojos = new ArrayList<String>();
        dojos.add("Burbank");
        dojos.add("Chicago");
        dojos.add("Bellevue");
        model.addAttribute("dojosFromMyController", dojos);
        return "demo.jsp";
    }
// ...



}
