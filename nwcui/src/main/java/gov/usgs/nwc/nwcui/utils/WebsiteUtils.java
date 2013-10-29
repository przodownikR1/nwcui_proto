/*******************************************************************************
 * Project:		nwcui
 * Source:		WebsiteUtils.java
 * Author:		Philip Russo
 ******************************************************************************/

package gov.usgs.nwc.nwcui.utils;

import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class WebsiteUtils {
	public static Logger getLogger(Class<?> T) {
		URL logFile = T.getResource("/log4j.properties");
		if(logFile == null) {
			logFile = T.getResource("conf/log4j.properties");
		}
		
		Logger log = Logger.getLogger(T.getName());	
		PropertyConfigurator.configure(logFile);
		
		return log;
	}
	
	public static <T> List<T> castList(Class<? extends T> clazz, Collection<?> c) {
	    List<T> r = new ArrayList<T>(c.size());
	    for(Object o: c)
	      r.add(clazz.cast(o));
	    return r;
	}
}
