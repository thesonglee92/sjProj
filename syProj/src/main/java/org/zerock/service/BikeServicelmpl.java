package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.dao.BikeDAO;
import org.zerock.vo.BikeVO;

@Service
public class BikeServicelmpl implements BikeService {

	@Inject
    private BikeDAO dao;
    
    @Override
    public List<BikeVO> selectbike() throws Exception {
 
        return dao.selectBike();
    }


}
