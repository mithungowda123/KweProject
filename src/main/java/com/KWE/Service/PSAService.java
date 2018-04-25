package com.KWE.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.KWE.Dao.PSAdao;
import com.KWE.Model.PSALogin;



@Service
public class PSAService {
	
	
	 @Autowired
	    private PSAdao psadao;	

	public void setPsadao(PSAdao psadao) {
		this.psadao = psadao;
	}
	
	 @Transactional
	    public PSALogin getUserByName(String username) {
		 PSALogin psaLogin = null;
		 psaLogin = psadao.getUserByName(username);

	        return psaLogin;
	    }

	 
	 @Transactional
	 public boolean CreateAccountNumber(PSALogin psalogin) {
		 
		 boolean ireturn=false;
		 
		 
		 
		 
		 
		 
		 return ireturn;
		 
	 }
	 
}
