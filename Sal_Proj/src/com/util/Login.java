package com.util;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import java.sql.ResultSet;

import com.dao.DbConn;

public class Login {
	/**
	 * @throws SQLException 
	 * 登录的时候就应该判断三个角色的权限。
	 * 数字越高权限越低。
	 */
	public static int Islogin(String id,String password,String role) throws SQLException{
		Connection con = DbConn.Link();
		ResultSet res = null;
		if(role.equals("教职工")){
		String sql = "select EN from ZGinfo where EN = "+id+"and psd ="+password;
		Statement state = con.createStatement();
		res = state.executeQuery(sql);
		if(res.next()){
			return 1; 
		}
		}
		if(role.equals("工资管理员")){
			String sql = "select EN from ZGinfo where EN = "+id+"and psd ="+password;
		Statement state = con.createStatement();
		res = state.executeQuery(sql);
		if(res.next()){
			return 2;
		}
		}
		
		if(role.equals("系统管理员")){
			String sql = "select EN from ZGinfo where EN = "+id+"and psd ="+password;
		Statement state = con.createStatement();
		res = state.executeQuery(sql);
		if(res.next()){
			return 3;
		}
		}
		return 0;
		
	}
	public static int Islogin1(String id) throws SQLException{
		Connection con = DbConn.Link();
		ResultSet res = null;
		
		String sql = "select EN from ZGinfo where EN = "+id;
		Statement state = con.createStatement();
		res = state.executeQuery(sql);
		if(res.next()){
			return 1; 
		}
		return 0;
		
	}
}
