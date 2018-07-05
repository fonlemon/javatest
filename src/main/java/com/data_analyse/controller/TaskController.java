package com.data_analyse.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.data_analyse.pojo.Result;
import com.data_analyse.pojo.Task;
import com.data_analyse.pojo.User;
import com.data_analyse.service.TaskService;

/**
 * 任务Controller
 * @author yl
 *
 */
@Controller
@RequestMapping("/task")
public class TaskController {
	
	@Autowired
	private TaskService taskService;
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping("/taskSend")
	public String showTaskSend(Model model){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		List<Task> list = taskService.getTaskByUserId(user.getId());
		model.addAttribute("taskList", list);
		return "task_send";
	}
	
	@RequestMapping("/publish")
	public String showPublish(){
		return "task_publish";
	}
	
	@RequestMapping("/detail")
	public String showDetail(String type,Long id,Model model){
		if(type.equals("1")){
			Task task = taskService.getTaskById(id);
			model.addAttribute("task", task);
			return "publish_detail";
		}else if(type.equals("2")){
			return null;
		}
		return null;
	}
	
	@RequestMapping("/saveTask") 
	public String saveTask(Task task,MultipartFile imgFile,MultipartFile originalFile1,String completionTimeString,User user,Model model){
		HttpSession session = request.getSession();
		User user1 = (User) session.getAttribute("user");
		Result result = taskService.saveTask(user1.getId(),task, imgFile,originalFile1, completionTimeString, user.getPhone());
		if(result.getNum()==200){
			return "redirect:/task/taskSend";
		}else{
			
			return "redirect:/task/publish";
		}
		
	}

}
