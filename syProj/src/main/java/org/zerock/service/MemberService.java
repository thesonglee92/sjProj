package org.zerock.service;

import org.zerock.vo.MemberVO;

public interface MemberService {

	Boolean chkPwd(MemberVO mem);

	MemberVO info(String id);

	int idchk(String id);

	void join(MemberVO mem);

}
