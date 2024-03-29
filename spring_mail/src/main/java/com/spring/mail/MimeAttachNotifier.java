package com.spring.mail;

import java.io.File;

import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import com.spring.command.MailRequestCommand;

public class MimeAttachNotifier {
	private JavaMailSender mailSender;
	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendMAil(MailRequestCommand command, String uploadPath) throws Exception {
		//메시지 생성
		MimeMessage message = mailSender.createMimeMessage();
		//메시지 작성 헬퍼.
		MimeMessageHelper messageHalper = new MimeMessageHelper(message, true, "utf-8");
		
		// 받는사람
		messageHalper.setTo(new InternetAddress(command.getReceiver()));
		// 보내는 사람
		messageHalper.setFrom(command.getSender(), "운영자");
		// 제목
		messageHalper.setSubject(command.getTitle());
		// 내용
		messageHalper.setText(command.getContent(), true);
		
		// 첨부파일 
		if(command.getFile() != null && !command.getFile().isEmpty()) {
			String fileName = command.getFile().getOriginalFilename();
			DataSource dataSource = new FileDataSource(new File(uploadPath, fileName));
			messageHalper.addAttachment(MimeUtility.encodeText(fileName, "utf-8", "B"), dataSource);
		}
		
		//메일 보내기.
		mailSender.send(message);
	}
}
