package org.zerock.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.zerock.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession ss;

	@Override
	public String chkPw(String id) {
		// TODO Auto-generated method stub
		return this.ss.selectOne("m_pwd", id);
	}

	@Override
	public MemberVO info(String id) {
		// TODO Auto-generated method stub
		return this.ss.selectOne("m_info", id);
	}

	@Override
	public int idchk(String id) {
		// TODO Auto-generated method stub
		return this.ss.selectOne("m_id", id);
	}

	@Override
	public void join(MemberVO mem) {
		// TODO Auto-generated method stub
		this.ss.insert("m_join", mem);
	}

}
