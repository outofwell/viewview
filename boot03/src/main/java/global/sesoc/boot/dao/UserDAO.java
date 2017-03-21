package global.sesoc.boot.dao;

import global.sesoc.boot.vo.User;

public interface UserDAO {
	// 회원가입 (참, 거짓)
	public int join(User user) throws Exception;
	
	// 아이디로 회원 정보 가져오기
	public User selectOne(String id) throws Exception;
}
