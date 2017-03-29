package global.sesoc.boot;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.boot.repository.BoardRepository;
import global.sesoc.boot.repository.FileRepository;
import global.sesoc.boot.repository.UserRepository;
import global.sesoc.boot.util.FileService;
import global.sesoc.boot.vo.Board;
import global.sesoc.boot.vo.Files;

@Controller
public class BoardController {

	@Autowired
	UserRepository userRepository;
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	FileRepository fileRepository;
	
	//이미지 파일 업로드 경로
	final String uploadPath = "/covers";
	
	
	//MYPAGE : 글쓰기 페이지로 이동
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write(int filenum, HttpSession session) {

		//드래그로 글 작성
		if(filenum != 0){
			Files file = fileRepository.loadFile(filenum);
			session.setAttribute("boardFile", file);
		}
		return "write";
	}
	
	
	//글 쓰기
	@RequestMapping(value="/writing", method=RequestMethod.POST)
	public String writing(MultipartFile upload, Board board){
		
		System.out.println(board);
		
		//이미지 처리
		if(!upload.isEmpty()){
			String savedFile = FileService.saveFile(upload, uploadPath);
			System.out.println(savedFile);
			//board.setOriginalfile(upload.getOriginalFilename());
			//board.setSavedfile(savedFile);
		}else{}
		
		boardRepository.write(board);
		
		return "write";
	}
	
	//글 수정
	
	//글 삭제

	//글 검색
	
	//댓글 등록
	
	//댓글 수정
	
	//댓글 삭제
	
	//LIKE

	//LIKE 리스트 (랭킹[기간별/전체/] / 특정사용자의LIKE리스트[나/남])
	
	//구독
	
	//구독 리스트
	
	//+음악 재생
}
