package global.sesoc.boot.dao;

import global.sesoc.boot.vo.User;

public interface UserDAO {
	// 삽입 (참, 거짓)
	public int insert(User user) throws Exception;
}
