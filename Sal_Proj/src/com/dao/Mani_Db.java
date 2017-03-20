package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Userinfo;
import com.entity.ViewTeacherinfo;

public class Mani_Db  extends DbConn{
	public static void AddUser(Userinfo info) throws SQLException{
		System.out.println("gg3");
		Connection con = DbConn.Link();
		
		String sql = "insert into ZGinfo values (?,?,?,?,?,?,?)";
		PreparedStatement state = con.prepareStatement(sql);
		state.setInt(1, info.getId());
		state.setString(2, info.getPassword());
		state.setString(3, info.getName());
		state.setString(4, info.getSex());
		state.setInt(5, info.getAge());
		state.setString(6, info.getNumber());
		state.setString(7, info.getCard());
		state.executeUpdate();
	}
	
	public static void  UpdateUser(Userinfo info) throws SQLException{
		Connection con = DbConn.Link();
		String sql = "";
		PreparedStatement state = con.prepareStatement(sql);
		state.setInt(1, info.getId());
		state.setString(2, info.getPassword());
		state.setString(3, info.getName());
		state.setString(4, info.getSex());
		state.setString(5, info.getNumber());
		state.setString(6, info.getCard());
		state.executeUpdate();
	}
	
	public  static void DeleteUser(Userinfo info) throws SQLException{
		Connection con = DbConn.Link();
		String sql = "";
		PreparedStatement state = con.prepareStatement(sql);
		state.setInt(1, info.getId());
		state.setString(3, info.getPassword());
		state.setString(2, info.getName());
		state.setString(4, info.getSex());
		state.setString(5, info.getNumber());
		state.setString(6, info.getCard());
		state.executeUpdate();
	}
	
	public  static List<ViewTeacherinfo> GetAllUser() throws SQLException{
		Connection con = DbConn.Link();
		String sql = "select * from ZGinfo ";
		PreparedStatement state = con.prepareStatement(sql);
		ResultSet result = state.executeQuery();
		List<ViewTeacherinfo> list = new ArrayList<ViewTeacherinfo>();
		while(result.next()){
			
			int id = result.getInt(1);
			String name = result.getString(3);
			
			String sex = result.getString(4);
			int age = result.getInt(5);
			String number = result.getString(6);
			String card = result.getString(7);
			
			ViewTeacherinfo info1 = new ViewTeacherinfo(name,id,sex,age,number,card);
			list.add(info1);
		}
		return list;
	}
	/*
	 * 通过id查询教职工信息。
	 */
	public  static List<ViewTeacherinfo> GetoneUser(String id1) throws SQLException{
		Connection con = DbConn.Link();
		int contents = Integer.parseInt(id1);
		String sql = "select * from ZGinfo where EN="+contents;
		PreparedStatement state = con.prepareStatement(sql);
		ResultSet result = state.executeQuery();
		List<ViewTeacherinfo> list = new ArrayList<ViewTeacherinfo>();
		while(result.next()){
			
			int id = result.getInt(1);
			String name = result.getString(3);
			
			String sex = result.getString(4);
			int age = result.getInt(5);
			String number = result.getString(6);
			String card = result.getString(7);
			
			ViewTeacherinfo info1 = new ViewTeacherinfo(name,id,sex,age,number,card);
			list.add(info1);
		}
		return list;
	}
	public  static List<ViewTeacherinfo> GetoneUserByname(String name1) throws SQLException{
		Connection con = DbConn.Link();
		
		//String sql = "select * from ZGinfo where USER_NAME='"+name1+"'";
		String sql = "select * from ZGinfo where USER_NAME=?";
		PreparedStatement state = con.prepareStatement(sql);
		state.setString(1, name1);
		ResultSet result = state.executeQuery();
		List<ViewTeacherinfo> list = new ArrayList<ViewTeacherinfo>();
		while(result.next()){
			
			int id = result.getInt(1);
			String name = result.getString(3);
			
			String sex = result.getString(4);
			int age = result.getInt(5);
			String number = result.getString(6);
			String card = result.getString(7);
			
			ViewTeacherinfo info1 = new ViewTeacherinfo(name,id,sex,age,number,card);
			list.add(info1);
		}
		return list;
	}
	
	/*
	 * 修改
	 */

}
