package com.zohocrm.servicees;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.zohocrm.entities.Billing;
import com.zohocrm.repositories.BillingRepo;

@Service
public class BillingSErviceImpl implements BillingService {
	
	@Autowired
	private BillingRepo billingRepo;

	@Override
	public void save(Billing billing) {
		 billingRepo.save(billing);
		
	}

}
