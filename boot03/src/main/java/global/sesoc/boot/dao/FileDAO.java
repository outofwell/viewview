package global.sesoc.boot.dao;

import java.util.ArrayList;

import global.sesoc.boot.vo.Files;

public interface FileDAO {

	
	//COMU - SAVE - 파일 저장
	public int save(Files file) throws Exception;
	
	//COMU - LOAD - 모든 파일 리스트 불러오기
	public ArrayList<Files> fileList() throws Exception;
	
	
}
