package com.data_analyse.service.impl;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.data_analyse.Utils.FtpUtil;
import com.data_analyse.mapper.TaskMapper;
import com.data_analyse.mapper.UserMapper;
import com.data_analyse.pojo.Result;
import com.data_analyse.pojo.Task;
import com.data_analyse.pojo.TaskExample;
import com.data_analyse.pojo.TaskExample.Criteria;
import com.data_analyse.pojo.User;
import com.data_analyse.service.TaskService;

@Service
public class TaskServiceImpl implements TaskService{
	@Value("${IMAGE_PORTRAIT_URL}")
	private String IMAGE_PORTRAIT_URL;
	@Value("${INTRODUCE_DEFAULT}")
	private String INTRODUCE_DEFAULT;
	@Value("${FTP_ADDRESS}")
	private String FTP_ADDRESS;
	@Value("${FTP_PORT}")
	private int FTP_PORT;
	@Value("${FTP_USERNAME}")
	private String FTP_USERNAME;
	@Value("${FTP_PASSWORD}")
	private String FTP_PASSWORD;
	@Value("${FTP_BASE_PATH}")
	private String FTP_BASE_PATH;
	@Value("${UPDATE_IMG_URL}")
	private String UPDATE_IMG_URL;
	
	@Autowired
	private TaskMapper taskMapper;
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<Task> getTaskByUserId(Long id) {

		TaskExample example = new TaskExample();
		Criteria criteria = example.createCriteria();
		criteria.andPublishIdEqualTo(id);
		List<Task> list = taskMapper.selectByExample(example);
		
		return list;
	}

	@Override
	public Result saveTask(Long id ,Task task, MultipartFile imgFile, MultipartFile file,String completionTimeString, String phone) {
		// TODO Auto-generated method stub
		task.setPublishId(id);
		String flag = updateImg(imgFile);
		if(flag==null){
			return Result.build(400, "图片上传错误");
		}
		String image_path = UPDATE_IMG_URL+flag;
		task.setImg(image_path);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date;
		try {
			date = format.parse(completionTimeString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return Result.build(400, "日期格式转换错误");
		}
		task.setCompletionTime(date);
		task.setReleaseTime(new Date());
		
		//上传文件
		if(file!=null){
			String file1 = updateImg(file);
			if(file1==null){
				return Result.build(400, "文件上传错误");
			}
			task.setResultFile(UPDATE_IMG_URL+file1);
		}
		
		//修改phone
		changePhone(id,phone);
		taskMapper.insert(task);
		return Result.ok();	
	}
	
	private void changePhone(Long id,String phone){
		User user = userMapper.selectByPrimaryKey(id);
		user.setPhone(phone);
		userMapper.updateByPrimaryKey(user);
	}
	
	private String updateImg(MultipartFile file) {
		// TODO Auto-generated method stub
		String orginName = file.getOriginalFilename();
		String newName = UUID.randomUUID().toString().replaceAll("-", "");
		if(orginName!=null){
			newName = newName.substring(12)+orginName.substring(orginName.lastIndexOf("."));
		}
		Calendar a=Calendar.getInstance();
		int year = a.get(Calendar.YEAR);
		int mouth = a.get(Calendar.MONTH)+1;
		int day = a.get(Calendar.DATE);
		String filepath="/"+year+"/"+mouth+"/"+day;
		try {
			FtpUtil.uploadFile(FTP_ADDRESS, FTP_PORT, FTP_USERNAME, FTP_PASSWORD, FTP_BASE_PATH,filepath, newName, file.getInputStream());
			//FTPUtils.testFtpClient(FTP_ADDRESS, FTP_PORT, FTP_USERNAME, FTP_PASSWORD, FTP_BASE_PATH+"/"+year+"/"+mouth+"/"+day, newName, file.getInputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		filepath = filepath+"/"+newName;
		return filepath;
	}

	@Override
	public Task getTaskById(Long id) {
		// TODO Auto-generated method stub
		Task task = taskMapper.selectByPrimaryKey(id);																																														
		return task;
	}
	
}
