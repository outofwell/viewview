package global.sesoc.boot.dao;

import global.sesoc.boot.vo.User;

public interface UserDAO {
	// 회원가입 (참, 거짓)
	public int join(User user) throws Exception;
}
