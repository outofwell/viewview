package global.sesoc.boot.vo;

public class User {
	private String userid;
	private String email;
	private String password;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String userid, String email, String password) {
		super();
		this.userid = userid;
		this.email = email;
		this.password = password;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
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
		return "User [userid=" + userid + ", email=" + email + ", password=" + password + "]";
	}

}
