package com.java.ot;

public class Main {

	private Input input = new Input();
	private Proccess proccess = new Proccess();
	private Output output = new Output();

	public static void main(String[] args) {
		
		Main main = new Main();
		
		//�Է�
		String input = main.input.input();
		
		//ó��
		String result = main.proccess.process(input);
		
		//���
		main.output.output2(result);
	}

}
