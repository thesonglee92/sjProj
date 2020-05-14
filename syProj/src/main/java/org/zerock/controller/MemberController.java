package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.service.MemberService;
import org.zerock.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	@RequestMapping("/login")
	public String login() {
		return "/member/login";
	}
	
	
	// 로그인
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public String signin(@ModelAttribute MemberVO mem, RedirectAttributes rttr, HttpServletRequest request) {
		
		Boolean chk = this.service.chkPwd(mem);
		
		if(!chk) {
			rttr.addFlashAttribute("id", mem.getId());
			rttr.addFlashAttribute("msg", "아이디/비밀번호를 확인해주세요");
			return "redirect:/login/";
		}
		
		rttr.addFlashAttribute("msg", "로그인 되었습니다");
		
		MemberVO vo = this.service.info(mem.getId());
		
		HttpSession session = request.getSession();
		session.setAttribute("mem", vo);
		
		return "redirect:/home";
		
	}
	
	@RequestMapping("/join")
	public String join() {
		return "/member/join";
	}
	
	@RequestMapping(value="/joinreg", method=RequestMethod.POST)
	public String joinreg(@ModelAttribute MemberVO mem, RedirectAttributes rttr, HttpServletRequest request) {
		
		this.service.join(mem);
		
		rttr.addFlashAttribute("msg", "환영합니다");
		
		MemberVO vo = this.service.info(mem.getId());
		
		HttpSession session = request.getSession();
		session.setAttribute("mem", vo);
		
		return "redirect:/home";
		
	}
	
	
	@RequestMapping(value="/idchk/{id}", method=RequestMethod.POST)
	public ResponseEntity<String> idchk(@PathVariable("id") String id){

		ResponseEntity<String> entity = null;
		
		try {
			
			int chk = this.service.idchk(id);
			
			if(chk==0) { // 없으면 가입 가능
				entity = new ResponseEntity<String>("ok", HttpStatus.OK);
			}else { // 있으면 가입 불가
				entity = new ResponseEntity<String>("no", HttpStatus.OK);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
}
