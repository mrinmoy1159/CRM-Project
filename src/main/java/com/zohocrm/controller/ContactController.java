package com.zohocrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.servicees.ContactService;

//import com.marketingapp.entities.Lead;


@Controller
public class ContactController {
	
	private ContactService contactService;
	
	
 public ContactController(ContactService contactService) {  //dependency injection by creating constructor
	this.contactService = contactService;
	}


@RequestMapping("/listallContact")   
 public String listAllLeads(ModelMap model) {
List<Contact> contacts= contactService.getAllContacts();    	   
 model.addAttribute("contacts", contacts);        
return "list_contacts";
	   }


}
