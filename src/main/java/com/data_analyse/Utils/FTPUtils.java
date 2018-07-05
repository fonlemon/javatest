package com.data_analyse.Utils;

import java.io.InputStream;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;

public class FTPUtils {
	
	public static boolean testFtpClient(String host,int port,String username,String password,String basePath,String filename,InputStream input){
//			创建一个FtpClient对象
			FTPClient ftpClient = new FTPClient();
//			//创建ftp连接。
			try {
				ftpClient.connect(host, port);
//			//登录ftp服务器，使用用户名和密码
				ftpClient.login(username, password);
//			//上传文件。
//			
////			//设置上传的路径
//				if (!ftpClient.changeWorkingDirectory(basePath)) {
//					if (!ftpClient.makeDirectory(basePath)) {
//						return false;
//					} else {
//						ftpClient.changeWorkingDirectory(basePath);
//					}
//				}
				ftpClient.changeWorkingDirectory(basePath);
				ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
				//第一个参数：服务器端文件名
				//第二个参数：上传文件的inputStream
				ftpClient.storeFile(filename, input);
//			//关闭连接
				ftpClient.logout();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		
}
