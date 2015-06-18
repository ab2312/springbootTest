package com.csst.configuration;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.embedded.ServletContextInitializer;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

@Configuration
public class WebConfig implements ServletContextInitializer  {

	@Autowired
	private ApplicationContext ctx;
	
	@Autowired
	DispatcherServlet dispatcherServlet;
	
	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		// TODO Auto-generated method stub
		Map<String, ? extends ServletRegistration> servletRegistrations = servletContext.getServletRegistrations();
		for (Iterator iterator = servletRegistrations.entrySet().iterator(); iterator.hasNext();) {
			Entry type = (Entry) iterator.next();
			System.out.println(type.getKey()+":"+type.getValue());
			
		}	
		//Dynamic addServlet = servletContext.addServlet("dispatcher",new DispatcherServlet() );
		//addServlet.addMapping("*.do");
		//addServlet.setLoadOnStartup(1); 	
		//servletContext.addFilter("file",  new CharacterEncodingFilter());
		
	}
	
//	 public ServletRegistrationBean containServelet(){
//		ServletRegistrationBean servletRegistrationBean = new ServletRegistrationBean(dispatcherServlet); 
//		servletRegistrationBean.addUrlMappings("/*","*.do");
//		servletRegistrationBean.setLoadOnStartup(1);
//		return servletRegistrationBean;
//	 }
	
	

}
