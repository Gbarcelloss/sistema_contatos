package br.com.sistemacontatos.controller;

import java.util.Properties;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

public class EmailMessage {

    private static final String ACCOUNT = "cc066bd5e4248b";
    private static final String PASSWORD = "f501962e704e88";
    private static final String SMTP = "sandbox.smtp.mailtrap.io";
    private static final int PORT = 2525;

    public static void sendMessage(String to, String subject, String body) throws Exception {

        JavaMailSenderImpl senderImpl = new JavaMailSenderImpl();
        senderImpl.setUsername(ACCOUNT);
        senderImpl.setPassword(PASSWORD);
        senderImpl.setHost(SMTP);
        senderImpl.setPort(PORT);

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", SMTP);
        props.put("mail.smtp.port", PORT);

        senderImpl.setJavaMailProperties(props);

        MimeMessagePreparator preparator = new MimeMessagePreparator() {
            @Override
            public void prepare(MimeMessage mimeMessage) throws Exception {
                MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "UTF-8");
                helper.setFrom("no-reply@sistemacontatos.com");
                helper.setTo(to);
                helper.setSubject(subject);
                helper.setText(body);
            }
        };

        senderImpl.send(preparator);
    }
}
