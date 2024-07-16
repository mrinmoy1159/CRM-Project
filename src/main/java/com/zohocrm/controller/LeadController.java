package com.zohocrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
//import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.servicees.BillingService;
import com.zohocrm.servicees.ContactService;
import com.zohocrm.servicees.LeadService;
import com.zohocrm.entities.Billing;

@Controller
public class LeadController { 
	
	@Autowired
	private LeadService leadservice;
	
	@Autowired
	private ContactService contactService;
	

	@Autowired
	private BillingService billingService;
	
	
	
	@GetMapping("/viewCreateLeadPage")
	public String viewCreateLeadPage() {
		return"create_lead";
	}
	
	@PostMapping("/savelead")
	public String saveLead(@ModelAttribute("lead") Lead lead, Model model) {
		leadservice.saveOneLead(lead);
		model.addAttribute("lead", lead);
		return"lead_info";
	}
	
	
	@PostMapping("/convertLead")
	public String convertLead(@RequestParam("id") long id,Model model) {
		Lead lead = leadservice.findLeadById(id);
		Contact contact=new Contact();
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setEmail(lead.getEmail());
		contact.setMobile(lead.getMobile());
		contact.setSource(lead.getSource());
		
		contactService.saveContact(contact);
		leadservice.deleteLeadById(id);
		
		List<Contact> contacts = contactService.getAllContacts();
		model.addAttribute("contacts", contacts);
		return"list_contacts";
	}
	
	@GetMapping("listAllLeads")
	public String listAllLead(ModelMap model) {
		List<Lead> leads = leadservice.findAll();
		model.addAttribute("leads", leads);
		return"list_lead";
	}
	
	@RequestMapping("leadinfo")
	public String leadinfo(@RequestParam("id") long id,Model model) {
		Lead lead = leadservice.findLeadById(id);
		model.addAttribute("lead", lead);
		return "lead_info";
	}
	
	@PostMapping("/savebilling")
	public String Billing(@ModelAttribute("billing") Billing billing, Model model) {
		billingService.save(billing);
		model.addAttribute("bill", "Your Billing Successfully done!!");
		return "savedBill";
	}
	
	

	

}
