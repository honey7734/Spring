package com.java.ot;

public class Proccess {
	
	public String process(String input) {
		String str = null;
		
		if(input == null) return null;
		
		try {
			Integer.parseInt(input);
			str = "���� : ";
		} catch (Exception e) {
			str = "���� : ";
		}
		str += input;
		
		return str;
		
	}
}
