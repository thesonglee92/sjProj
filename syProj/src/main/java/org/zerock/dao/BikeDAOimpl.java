package org.zerock.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.vo.BikeVO;

@Repository
public class BikeDAOimpl implements BikeDAO{

	
	@Inject
	private SqlSession ss;

	private static final String Namespace = "bi";

	
	@Override
	public List<BikeVO> selectBike() throws Exception {
		// TODO Auto-generated method stub
		return ss.selectList(Namespace+".bike");
	}
	
}
