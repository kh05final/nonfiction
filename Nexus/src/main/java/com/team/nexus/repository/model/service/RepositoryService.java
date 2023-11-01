package com.team.nexus.repository.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.reactive.function.client.WebClient;

import com.sun.net.httpserver.Headers;
import com.team.nexus.member.model.vo.Member;
import com.team.nexus.repository.model.dao.RepositoryDao;
import com.team.nexus.repository.model.vo.Repositories;
import com.team.nexus.repository.model.vo.Test;

import reactor.core.publisher.Mono;

@Service
public class RepositoryService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private RepositoryDao rDao;

	@Autowired
	private WebClient webClient;

	public int insertRepo(Repositories r) {
		return rDao.insertRepo(sqlSession, r);
	}

	public ArrayList<Repositories> selectRepoList(int userNo) {
		return rDao.selectRepoList(sqlSession, userNo);
	}

	public Repositories selectRepo(int rNo) {
		return rDao.selectRepo(sqlSession, rNo);
	}

	public int updateRepoContent(Repositories repo) {
		return rDao.updateRepoContent(sqlSession, repo);
	}

	public String getRepoContent(Repositories repo) {
		return rDao.getRepoContent(sqlSession, repo);
	}

	/*
	 * http 통신을 위한 메서드들
	 */

	// 비동기통신을 하기 위한 메서드
	public Mono<String> asynHttpRequest(String path, HttpSession session) {

		String token = ((Member) session.getAttribute("loginUser")).getToken();

		Mono<String> responseMono = webClient
				.get()
				.uri("https://api.github.com/repos/" + path)
				.header(HttpHeaders.AUTHORIZATION, "Bearer " + token)
				.header(HttpHeaders.ACCEPT, "application/vnd.github+json")
				.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
				.retrieve()
				.bodyToMono(String.class);

		// 빈등록 이전 방식

		// WebClient client = WebClient.builder()
		// .baseUrl("https://api.github.com")
		// .defaultHeader(HttpHeaders.AUTHORIZATION, "Bearer " + token)
		// .defaultHeader(HttpHeaders.ACCEPT, "application/vnd.github+json")
		// .defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
		// .build();
		//
		// String url = "/repos/" + path;
		//
		// Mono<String> responseMono = client.get()
		// .uri(url)
		// .retrieve()
		// .bodyToMono(String.class);

		return responseMono;

	}

	// download_url과 같이 full url이 들어오는경우 사용하는 동기 메서드
	public String getGitContentsByGet1(String path, HttpSession session) {

		String token = ((Member) session.getAttribute("loginUser")).getToken();

		String response = webClient
				.get()
				.uri(path)
				.header(HttpHeaders.AUTHORIZATION, "Bearer " + token)
				.header(HttpHeaders.ACCEPT, "application/vnd.github+json")
				.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
				.retrieve()
				.bodyToMono(String.class)
				.block();

		// WebClient client = WebClient.builder()
		// .baseUrl(path)
		// .defaultHeader(HttpHeaders.AUTHORIZATION, "Bearer " + token)
		// .defaultHeader(HttpHeaders.ACCEPT, "application/vnd.github+json")
		// .defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
		// .build();
		//
		// String response = client.get().retrieve().bodyToMono(String.class).block();

		return response;
	}

	// 이외의 get, put, delete시 사용될 동기 메서드
	public String synHttpRequest(String path, HttpSession session, String method) {
		String token = ((Member) session.getAttribute("loginUser")).getToken();

		WebClient client = WebClient.builder()
				.baseUrl("https://api.github.com/")
				.defaultHeader(HttpHeaders.AUTHORIZATION, "Bearer " + token)
				.defaultHeader(HttpHeaders.ACCEPT, "application/vnd.github+json")
				.defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
				.build();

		String response = null;
		
		System.out.println("path : " + path);
		
		System.out.println("client : " + client);

		if (method.equals("get")) {
			response = client.get().uri(path).retrieve().bodyToMono(String.class).block();
		} else if (method.equals("put")) {
			response = client.put().uri(path).retrieve().bodyToMono(String.class).block();
		} else if (method.equals("delete")) {
			response = client.delete().uri(path).retrieve().bodyToMono(String.class).block();
		}
		
		System.out.println("url이 어떻게 넘어오나?? : " + response);

		return response;
	}

	public String gitPatchMethod(String path, HttpSession session, String title, String body, int ino) {

		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setBearerAuth((((Member) (session.getAttribute("loginUser"))).getToken()));
		headers.setContentType(MediaType.APPLICATION_JSON);
		String url = "https://api.github.com/repos/" + path + "/" + ino;

		System.out.println("url : " + url);

		// Create a JSON object for the issue payload
		JSONObject issueJson = new JSONObject();
		issueJson.put("title", title);
		issueJson.put("body", body);
		JSONArray assigneesArray = new JSONArray();
		// ### 라벨만 있으면 에러나서 주석처리함
		// assigneesArray.add(assignees);
		// issueJson.put("assignees", assigneesArray);

		String test = "{\"title\":\"Found a bug\",\"body\":\"I''m having a problem with this.\"}";

		HttpEntity<String> entity = new HttpEntity<String>(test, headers);

		ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.PATCH, entity, String.class);

		return response.getBody();
	}

	public int updateAccessDate(int rNo) {
		return rDao.updateAccessDate(sqlSession, rNo);
	}

	public ArrayList<Repositories> selectRepoList1(int userNo) {
		return rDao.selectRepoList1(sqlSession, userNo);
	}

}