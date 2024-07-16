package com.zohocrm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Billing;
import com.zohocrm.entities.Contact;
import com.zohocrm.servicees.BillingService;
import com.zohocrm.servicees.ContactService;

@Controller

public class BillingController {
	
	@Autowired
	private ContactService contactService;
	
	
	@RequestMapping("/generateBill")
	public String generateBill(@RequestParam("id") long id, ModelMap model) {
		Contact contact = contactService.findById(id);
		model.addAttribute("contact", contact);
		return "generate_bill";
	}
	
	

}
