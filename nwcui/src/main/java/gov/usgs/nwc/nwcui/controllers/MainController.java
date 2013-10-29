/*******************************************************************************
 * Project:		nwcui
 * Source:		MainController.java
 * Author:		Philip Russo
 ******************************************************************************/

package gov.usgs.nwc.nwcui.controllers;

import gov.usgs.nwc.nwcui.utils.WebsiteUtils;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class MainController {
	private static Logger log = WebsiteUtils.getLogger(MainController.class);
	
	@RequestMapping(value="/", method=RequestMethod.GET)
    public ModelAndView entry() {
		log.info("MainController.entry() Called");		
		
		ModelAndView mv = new ModelAndView("/main", "title", "National Water Census - User Interface");
		
		/**
		 * Lets get all available workflows
		 * 
		 * 		In the future we can make a Workflow class that has all of the
		 * 		workflow information embedded into it passed back to the client.
		 */
		List<String> workflows = Arrays.asList("Water Budget", "Aquatic Biology", "Streamflow Stats", "Data Discovery");
		mv.addObject("workflows", workflows);
		
		return mv;
    }
	
	@RequestMapping(value = {"/ang/", "/ang/*", "/ang/**"}, method=RequestMethod.GET)
    public ModelAndView workflow(HttpServletRequest request) {
		log.info("MainController.workflow() Called");
		
		String parameters = (String) request.getAttribute( HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE );
		
		log.error("PARAMS:\n" + parameters);
		
		ModelAndView mv = new ModelAndView("/workflow", "title", "");
		
		return mv;
    }
}
