package com.csst.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component

@ConfigurationProperties(prefix="my")
public class UserDao {	

    @Value("${app.description}")
    private String name;
    
    private List<String> servers = new ArrayList<String>();
    
    public List<String> getServers() {
        return this.servers;
    }

	public String select() {
		System.out.println(name);
		System.out.println(servers);
		Random random = new Random();
		StringBuilder stringBuilder = new StringBuilder();
		
		for (int i = 0; i < 5; i++) {
			int nextInt = random.nextInt(26)+97;
			stringBuilder.append((char)nextInt);
		}
		return  stringBuilder.toString();
	}
}
