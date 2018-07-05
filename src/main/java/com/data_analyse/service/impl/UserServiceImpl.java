package com.data_analyse.service.impl;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.web.multipart.MultipartFile;

import com.data_analyse.Utils.FTPUtils;
import com.data_analyse.Utils.FtpUtil;
import com.data_analyse.mapper.UserMapper;
import com.data_analyse.pojo.Result;
import com.data_analyse.pojo.User;
import com.data_analyse.pojo.UserExample;
import com.data_analyse.pojo.UserExample.Criteria;
import com.data_analyse.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
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

	public User checkUserLogin(String email, String password, HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
				UserExample example = new UserExample();
				Criteria criteria = example.createCriteria();
				criteria.andEmailEqualTo(email);
				List<User> list = userMapper.selectByExample(example);
				if(list!=null && list.size()>0){
					User user = list.get(0);
					if(DigestUtils.md5DigestAsHex(password.getBytes()).equals(user.getPassword())){
						HttpSession userSession = request.getSession();
						userSession.setAttribute("user", user);
						return user;
					}
				}
				return null;
	}

	public boolean userRegister(String email, String password, String type) {
		// TODO Auto-generated method stub
		Random rand = new Random();
		int index = email.lastIndexOf("@");
		String name = email.substring(0,index);
		int number = rand.nextInt(12) ;
		String img = IMAGE_PORTRAIT_URL+number+".jpg";
		User user = new User();
		user.setName(name);
		user.setImg(img);
		user.setIntroduction(INTRODUCE_DEFAULT);
		user.setVip("0");
		user.setViolationNumber(0);
		user.setEmail(email);
		user.setPassword(DigestUtils.md5DigestAsHex(password.getBytes()));
		//user.setName();
		user.setType(type);
		try {
			userMapper.insert(user);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andEmailEqualTo(email);
		List<User> list = userMapper.selectByExample(example);
		if(list!=null&&list.size()>0){
			return false;
		}
		return true;
	}

	@Override
	public boolean userlogout(HttpServletRequest request) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		try {
			session.removeAttribute("user");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public User changeName(String name, Long id) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByPrimaryKey(id);
		user.setName(name);
		userMapper.updateByPrimaryKey(user);
		return user;
	}

	@Override
	public boolean checkOldPass(Long id, String pass) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByPrimaryKey(id);
		if(!DigestUtils.md5DigestAsHex(pass.getBytes()).equals(user.getPassword())){
			return false;
		}
		return true;
	}

	@Override
	public Result changePass(Long id, String pass) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByPrimaryKey(id);
		user.setPassword(DigestUtils.md5DigestAsHex(pass.getBytes()));
		userMapper.updateByPrimaryKey(user);
		return Result.build(200, "密码修改成功请重新登录");
	}

	@Override
	public User changeEmail(Long id, String email) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByPrimaryKey(id);
		user.setEmail(email);
		userMapper.updateByPrimaryKey(user);
		return user;
	}

	@Override
	public User changeIntroduction(Long id, String intro) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByPrimaryKey(id);
		user.setIntroduction(intro);
		userMapper.updateByPrimaryKey(user);
		return user;
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
	public User changeImg(Long id, MultipartFile file) {
		// TODO Auto-generated method stub
		String flag = updateImg(file);
		if(flag==null){
			return null;
		}
		//http://10.13.105.40/images/2018/06/07/1528356692333317.jpg
		User user = userMapper.selectByPrimaryKey(id);
		String image_path = UPDATE_IMG_URL+flag;
		user.setImg(image_path);
		userMapper.updateByPrimaryKey(user);
		return user;
	}

}
