package com.team.nexus.issue.model.vo;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class GitIssue {

	private String title;
	private String[] labels;  	// 라벨 배열
	private String state;	  	// open - closed - all
	private String milestone; 	// 마일스톤
	private int number;		  	// 이슈 생성 번호
	private int milestoneNum;

	private String fullName;    // 레파지토리 이름

	private String createdAt; 	// 생성일
	private String updatedAt; 	// 수정일
	private String closedAt;  	// 종료일
	private String id;   	// 이슈아이디
	private String user; 		// 작성자
	private String userId;		// 작성자의 숫자 id
	private String profile;		// 프로필
	
	
	 private String[] assignees;    // 이슈 담당자 이름
	 private String[] assigneeProfiles; // 이슈 담당자 프로필 경로
	
	 private String login;
	
}
