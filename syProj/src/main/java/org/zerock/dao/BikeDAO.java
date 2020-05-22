package org.zerock.dao;

import java.util.List;

import org.zerock.vo.BikeVO;

public interface BikeDAO {

	public List<BikeVO> selectBike() throws Exception;

}
