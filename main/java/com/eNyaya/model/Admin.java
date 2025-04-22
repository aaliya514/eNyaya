package com.eNyaya.model;

import java.sql.Date;

/**
 class representing an Admin user.
 */
public class Admin {
    private int id;
    private String name;
    private String email;
    private String password;

    // Default constructor
    public Admin() {
    }

    // Parameterized constructor
    public Admin(int id, String name, String email, String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
    }

    // Getter and Setter methods

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

	public void setJoinedDate(Date date) {
		// TODO Auto-generated method stub
		
	}
}
