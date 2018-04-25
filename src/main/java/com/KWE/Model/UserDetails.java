package com.KWE.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;

@Entity
@Table(name="userdetails" , catalog="kwe_db")
public class UserDetails implements java.io.Serializable{

	private Integer userid;
	private String Fname;
	private String Lname;
	private String Emailid;
	private Integer Accountnumber;
	private String zipcode;
	private String Effortkey;
	private String magcode;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="userId",nullable=false,unique=true)
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	@Column(name="firstname", nullable=false,length=50)
	public String getFname() {
		return Fname;
	}
	public void setFname(String fname) {
		Fname = fname;
	}
	@Column(name="lastname")
	public String getLname() {
		return Lname;
	}
	public void setLname(String lname) {
		Lname = lname;
	}
	@Column(name="Emailid")
	public String getEmailid() {
		return Emailid;
	}
	public void setEmailid(String emailid) {
		Emailid = emailid;
	}
	@Column(name="accountnumber")
	public Integer getAccountnumber() {
		return Accountnumber;
	}
	public void setAccountnumber(int accountnumber) {
		Accountnumber = accountnumber;
	}
	@Column(name="zipcode")
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zcode) {
		this.zipcode = zcode;
	}
	@Column(name="effortkey")
	public String getEffortkey() {
		return Effortkey;
	}
	public void setEffortkey(String effortkey) {
		Effortkey = effortkey;
	}
	@Column(name="Magcode")
	public String getMagcode() {
		return magcode;
	}
	public void setMagcode(String magcode) {
		this.magcode = magcode;
	}
	
	
}
