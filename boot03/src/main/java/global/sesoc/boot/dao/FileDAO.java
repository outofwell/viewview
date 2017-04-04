package global.sesoc.boot.dao;

import java.util.ArrayList;

import global.sesoc.boot.vo.Files;

public interface FileDAO {

	
	//COMU - SAVE - 파일 저장
	public int saveFile(Files file) throws Exception;
	
	//COMU - LOAD - 모든 파일 리스트 불러오기
	public ArrayList<Files> fileList() throws Exception;

	//COMU - LOAD - 특정 파일 불러오기
	public Files loadFile(int filenum) throws Exception;

	//COMU - SAVE - 파일 덮어쓰기
	public int updateFile(Files file) throws Exception;

	//MYPAGE - 파일 삭제
	public int deleteFile(int filenum) throws Exception;
	
	
}
