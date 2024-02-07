package com.team.nexus.chatting.model.vo;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor      // 기본생성자
@AllArgsConstructor     // 매개변수 생성자
@Setter                 // setter 메소드
@Getter                 // getter 메소드
@ToString
public class ChatMessage {
	private int chattingNo;
	private int roomNo;
	private String chattingContent;
	private Date createDate;
	private String originName;
	private String changeName;
	private int userNo;
	private String userName;
	private String profile;
	private String today;
	private String invite;
	
}


// 모두들 6개월동안 수고하셨어요! 원하시는 결과 있기를....
// 강사님도 너무 감사합니다. 덕분에 파이널도 무사히 마칠 수 있었어요 ♥♥♥♥♥♥♥
