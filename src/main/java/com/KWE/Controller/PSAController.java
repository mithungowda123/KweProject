package com.KWE.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.KWE.Model.PSALogin;
import com.KWE.Model.UserDetails;
import com.KWE.Service.PSAService;


@Controller
public class PSAController {
	
	@Autowired
	private PSAService PSAservice;
	
	
	@RequestMapping("/PSA/PSAlogin.htm")	
	public ModelAndView PSAlogin(HttpServletRequest request, HttpServletResponse response) {
        ModelMap map = new ModelMap();

        return new ModelAndView("PSAlogin", map);
    }
	
	 @RequestMapping("/PSA/PSAFormSubmit.htm")
	 public ModelAndView loginFormSubmit(HttpServletRequest request, HttpServletResponse response) {
	        ModelMap map = new ModelMap();
	        HttpSession session = null;
	        String userName = request.getParameter("userName");
	        String password = request.getParameter("password");

	        PSALogin psaloginuser=PSAservice.getUserByName(userName);
	        
	     
	        if (psaloginuser != null) {

	            if (password.equals(psaloginuser.getPassword())) {
	                session = request.getSession();
                  map.addAttribute("username", psaloginuser.getUsername().toUpperCase());
	                return new ModelAndView("home", map);
	            }

	        }
	     
	        map.addAttribute("errorMessage", "Login failed please try again!!!!!!!");
	        return new ModelAndView("PSAlogin", map);
	  
	 }
	 
	/* @RequestMapping("/PSA/CreateNewOrder.htm")
	 public ModelAndView CreateNewOrder(HttpServletRequest request, HttpServletResponse response) {
		 ModelMap map = new ModelMap();
	        HttpSession session = null;
	        UserDetails userdetails=new UserDetails();
	        String fname = request.getParameter("fname");
	        String lname = request.getParameter("lname");
	        String mail = request.getParameter("fname");
	        String Zcode = request.getParameter("fname");
	        String publisher = request.getParameter("publisher");
	        userdetails.setFname(fname);
	        userdetails.setLname(lname);
	        userdetails.setEmailid(mail);
	        userdetails.setZipcode(Zcode);
	        userdetails.setMagcode(publisher);
	        
	        
	        
	     
	 }*/
	 
	 
	 
	 /*@RequestMapping("/PSA/PSALookup.htm")
	 public ModelAndView PSALookup(HttpServletRequest request, HttpServletResponse response ) {
		 HttpSession session = null;
		 ModelMap map=new ModelMap();
		 String AccountNumber = request.getParameter("accnum");
		 

	 }
	*/

}
