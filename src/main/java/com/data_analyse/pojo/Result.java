package com.data_analyse.pojo;

public class Result {
	private int status;
	private Object data;
	private String msg;
	private int num;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	public Result(){
		this.status=200;
	}
	public Result(int status,String msg){
		this.status=status;
		this.msg=msg;
	}
	
	public Result(int status, Object data, int num) {
		super();
		this.status = status;
		this.data = data;
		this.num = num;
	}
	
	public Result(int status, Object data) {
		super();
		this.status = status;
		this.data = data;
	}
	public static Result ok(){
		return new Result();
	}
	
	public static Result build(int status,String msg){
		return new Result(status,msg);
	}
	
	public static Result build(int status,Object data,int num){
		return new Result(status, data, num);
	}
	
	public static Result build(int status,Object data){
		return new Result(status,data);
	}
}
