package com.java.ot;

public class Main {

	private Input input = new Input();
	private Proccess proccess = new Proccess();
	private Output output = new Output();

	public static void main(String[] args) {
		
		Main main = new Main();
		
		//입력
		String input = main.input.input();
		
		//처리
		String result = main.proccess.process(input);
		
		//출력
		main.output.output2(result);
	}

}
