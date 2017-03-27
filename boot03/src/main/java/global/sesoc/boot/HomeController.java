package global.sesoc.boot;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.boot.repository.BoardRepository;
import global.sesoc.boot.repository.UserRepository;
import global.sesoc.boot.util.FileService;
import global.sesoc.boot.vo.Board;
import global.sesoc.boot.vo.Files;
import global.sesoc.boot.vo.User;

@Controller
public class HomeController {

	@Autowired
	UserRepository userRepository;
	
	@Autowired
	BoardRepository boardRepository;
	
	final String uploadPath = "/imagefiles";

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/comu", method = RequestMethod.GET)
	public String comu() {
		return "comu";
	}

	@RequestMapping(value = "/hicu", method = RequestMethod.GET)
	public String hicu() {
		return "hicu";
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage() {
		return "mypage";
	}

	@RequestMapping(value = "/shared", method = RequestMethod.GET)
	public String shared() {
		return "shared";
	}

	@RequestMapping(value = "/howto", method = RequestMethod.GET)
	public String howto() {
		return "howto";
	}

	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String testing() {
		return "aboutus";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test() {
		return "testing";
	}
	
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public String test2() {
		return "testing2";
	}

	// join 처리
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(User user) {
		userRepository.join(user);
		return "home";
	}

	// login 처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String userid, String password, Model model, HttpSession session) {
		userRepository.login(userid, password, model, session);
		return "redirect:/";
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {
		return "write";
	}

	// logout 처리
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// id 중복확인 화면 요청
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	public String idCheck() {
		return "idCheck";
	}

	
	// id 중복확인 처리 요청
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public String idCheck(String userid, Model model) {
		userRepository.idCheck(userid, model);
		return "idCheck";
	}
	
	//작성된 게시글을 DB에 저장		//@return 게시글 입력화면을 위한 view
	@RequestMapping(value="/writing", method=RequestMethod.POST)
	public String writing(MultipartFile upload, Board board){
		
		System.out.println(board);
		
		//첨부된 파일을 처리
		if(!upload.isEmpty()){
			String savedFile = FileService.saveFile(upload, uploadPath);
			System.out.println(savedFile);
			//board.setOriginalfile(upload.getOriginalFilename());
			//board.setSavedfile(savedFile);
		}else{}
		
		boardRepository.write(board);
		
		return "write";
	}
	
	
	//comu- 파일 저장
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String save(MultipartFile upload, Files file){
		
		//첨부된 파일을 처리
		if(!upload.isEmpty()){
			String savedFile = FileService.saveFile(upload, uploadPath);
			System.out.println(savedFile);
			file.setCover_ori(upload.getOriginalFilename());
			file.setCover_re(savedFile);
		}
		
		System.out.println(file);
		
		
		return "comu";
	}
	
	
	
	
}
