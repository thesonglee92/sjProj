package org.zerock.dao;

import org.zerock.vo.MemberVO;

public interface MemberDAO {

	String chkPw(String id);

	MemberVO info(String id);

	int idchk(String id);

	void join(MemberVO mem);


}
