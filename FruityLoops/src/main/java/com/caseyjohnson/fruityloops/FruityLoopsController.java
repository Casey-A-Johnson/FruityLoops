package com.caseyjohnson.fruityloops;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.caseyjohnson.fruityloops.models.Item;

@Controller
public class FruityLoopsController {
	
	@RequestMapping("/fruityloops")
	public String index(Model model) {
		ArrayList<Item> fruits = new ArrayList<Item>();
		fruits.add(new Item("Kiwi", 1.5));
		fruits.add(new Item("Mango", 2.0));
		fruits.add(new Item("Goji Berries", 4.0));
		fruits.add(new Item("Guava", .75));
		
		//add view model
		model.addAttribute("listOfFruits", fruits);
		
		return "fruityloops.jsp";
	}
	
}
