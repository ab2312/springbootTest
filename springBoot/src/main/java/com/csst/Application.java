package com.csst;

import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.DispatcherServletAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.embedded.ServletRegistrationBean;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.ApplicationContextInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ImportResource;
import org.springframework.web.servlet.DispatcherServlet;

//@Configuration
//@EnableAutoConfiguration
//@ComponentScan(basePackages="com.csst")
//@ConfigurationProperties(prefix="my")
@SpringBootApplication
@ImportResource({ "classpath:spring-mybatis.xml" })
public class Application extends SpringBootServletInitializer {

	private static Logger log = Logger.getLogger(Application.class);

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(Application.class);
	}

	public static void main(String[] args) {
		log.info("this is log4j test");
		// SpringApplication.run(Application.class, args);
		SpringApplication app = new SpringApplication(Application.class);
		Properties properties = System.getProperties();
		for (Iterator iterator = properties.entrySet().iterator(); iterator.hasNext();) {
			Map.Entry type = (Map.Entry) iterator.next();
			System.out.println(type.getKey() + "=" + type.getValue());
		}
		System.out.println("webAppRootKey=" + System.getProperty("webAppRootKey"));
		app.setShowBanner(false);
		// ConfigFileApplicationContextInitializer
		// configFileApplicationContextInitializer = new
		// ConfigFileApplicationContextInitializer();
		// configFileApplicationContextInitializer.initialize(applicationContext);
		// app.addInitializers();

		Set<ApplicationContextInitializer<?>> initializers = app.getInitializers();
		System.out.println("print bean names");
		for (ApplicationContextInitializer beanName : initializers) {
			System.out.println(beanName);
		}
		app.run(args);

	}

}