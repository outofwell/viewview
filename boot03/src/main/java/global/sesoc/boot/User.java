package global.sesoc.boot;

public class User {
	
	private String id;
	private String email;
	private String password;
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String id, String email, String password) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", password=" + password + "]";
	}
	
	

}
