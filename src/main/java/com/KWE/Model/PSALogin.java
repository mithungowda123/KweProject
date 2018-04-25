package com.KWE.Model;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Table;

@Entity
@Table(name = "psalogin")
public class PSALogin implements java.io.Serializable  {

	@Id
	@Column(name = "PSAid", unique = true, nullable = false)
	private int psaId;
	 
	    
	public int getPsaId() {
		return psaId;
	}
	public void setPsaId(int psaId) {
		this.psaId = psaId;
	}
	private String username;
	private String password;
	
	  @Column(name = "Username", nullable = false, length = 19)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	 @Column(name = "Password", nullable = false, length = 19)
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
