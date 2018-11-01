package com.lab8.models;


public class Author {
	
	private Integer id;
	private String fname;
	private String lname;
	private String email;
	
	
	public Author() {
		super();
	}
	
	public Author(String fname, String lname, String email) {
		this(null,fname,lname,email);
	}
	public Author(Integer id, String fname, String lname, String email) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
	}
	
	public Author(Object[] details){
		if(details != null && details.length >= 4){
			this.id = (Integer) details[0];
			this.fname = (String) details[1];
			this.lname = (String) details[2];
			this.email = (String) details[3];
		}
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Author [id=" + id + ", fname=" + fname + ", lname=" + lname
				+ ", email=" + email + "]";
	}
	
	
	

}
