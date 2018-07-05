package com.data_analyse.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.data_analyse.pojo.Result;
import com.data_analyse.pojo.Task;

public interface TaskService {
	
	List<Task> getTaskByUserId(Long id);
	Result saveTask(Long id,Task task,MultipartFile imgFile,MultipartFile file,String completionTimeString,String phone);
	Task getTaskById(Long id);
}
