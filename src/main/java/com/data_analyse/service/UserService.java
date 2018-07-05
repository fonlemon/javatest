package com.data_analyse.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

import com.data_analyse.pojo.Result;
import com.data_analyse.pojo.User;

public interface UserService {
	User checkUserLogin(String email,String password,HttpServletRequest request,HttpServletResponse response);
	boolean userRegister(String email,String password,String type);
	boolean checkEmail(String email);
	boolean userlogout(HttpServletRequest request);
	User changeName(String name,Long id);
	boolean checkOldPass(Long id,String pass);
	Result changePass(Long id,String pass);
	User changeEmail(Long id,String email);
	User changeIntroduction(Long id,String intro);
	User changeImg(Long id,MultipartFile file);
}
