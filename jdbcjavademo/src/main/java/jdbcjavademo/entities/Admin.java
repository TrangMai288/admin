/**
 * 
 */
/**
 * @author DELL
 *
 */
package jdbcjavademo.entities;


import java.sql.Date;

public class Admin{
	private int id;
	private String name;
	private String password;
	private String email;
	private Date  birth;
	private String phone;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getname() {
		return name;
	}
	
	public void setname(String name) {
		this.name = name;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassWord(String password) {
		this.password = password;
	}
}