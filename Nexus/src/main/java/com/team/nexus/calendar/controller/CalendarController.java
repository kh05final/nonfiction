package com.team.nexus.calendar.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.team.nexus.calendar.model.service.CalendarServiceImpl;
import com.team.nexus.calendar.model.vo.Calendar;
import com.team.nexus.member.model.vo.Member;

@Controller
public class CalendarController {
	
	@Autowired
	private CalendarServiceImpl cService;
	
	@RequestMapping("selectCal.ih")
	public String selectCalendar() {
//		Member loginUser = (Member)session.getAttribute("loginUser");
//		int userNo = loginUser.getUserNo();
//		ArrayList<Calendar> list =  cService.selectCalendar(userNo);
//		model.addAttribute("cal", list);
		return "calendar/calendar";
	}
	
	@ResponseBody
	@RequestMapping("schedule.ih")
	public String scheduleList(HttpSession session, Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		ArrayList<Calendar> list =  cService.selectCalendar(userNo);
		
		return new Gson().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping("insertCal.ih")
	public int insertCalendar(Calendar cal, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		cal.setUserNo(loginUser.getUserNo());
		int result = cService.insertCalendar(cal);
		
		return result;
	}
	
	
	@RequestMapping("drop.ih")
	public void dropSchedule(Calendar cal, String _id) {
		cal.set_id(_id);
		cService.dropSchedule(cal);
	}
	
	@ResponseBody
	@RequestMapping("updateCal.ih")
	public int updateCalendar(Calendar cal, String title, String _id) {
		cal.set_id(_id);
		int result = cService.updateCalendar(cal);
		return result;
	}
	
	@ResponseBody
	@RequestMapping("deleteCal.ih")
	public int deleteCalendar(String _id) {
		int result = cService.deleteCalendar(_id);
		
		return result;
	}
}
