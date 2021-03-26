package com.mptn.eshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mptn.eshop.repository.CategoryRepository;

@Controller
public class HomeController {
	
	@Autowired CategoryRepository categoryRepository;
	
	@RequestMapping("/")
    public String welcomePage(Model model) {
		model.addAttribute("listCategory", categoryRepository.findAll());
        return "homePage";
    }
	
}
