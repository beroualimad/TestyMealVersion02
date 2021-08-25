package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "Controller ; DAO ; Metier")
public class DevoirTastyMealApplication {

	public static void main(String[] args) {
		SpringApplication.run(DevoirTastyMealApplication.class, args);
	}

}
