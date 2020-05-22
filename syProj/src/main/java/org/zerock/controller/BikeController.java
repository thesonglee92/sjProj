package org.zerock.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.service.BikeService;
import org.zerock.vo.BikeVO;

@Controller
public class BikeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
    
    @Inject
    private BikeService service;
    
    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/bikeinfo", method = RequestMethod.GET)
    public String bikeinfo(Locale locale, Model model) throws Exception{
 
        logger.info("bikeinfo");
        
        List<BikeVO> bikeList = service.selectbike();
        
        model.addAttribute("bikeList", bikeList);
 
        return "/bike/bikeinfo";
    }

    @RequestMapping(value = "/rent", method = RequestMethod.GET)
	public String rent() {
	    return "/bike/rent";
	}
	
	@RequestMapping(value = "/bikerent", method = RequestMethod.GET)
	public String bikerent() {
	    return "/bike/bikerent";
	}
}
