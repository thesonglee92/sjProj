package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.dao.MemberDAO;
import org.zerock.vo.MemberVO;

@Service 
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO dao;
	
	@Override
	public Boolean chkPwd(MemberVO mem) {
		// TODO Auto-generated method stub
		
		String pw = this.dao.chkPw(mem.getId());
		
		if(pw.equals(mem.getPwd())) {
			return true;
		}		
		return false;
	}

	@Override
	public MemberVO info(String id) {
		// TODO Auto-generated method stub
		return this.dao.info(id);
	}

	@Override
	public int idchk(String id) {
		// TODO Auto-generated method stub
		return this.dao.idchk(id);
	}

	@Override
	public void join(MemberVO mem) {
		// TODO Auto-generated method stub
		this.dao.join(mem);
	}

}
