package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.ViewTeacherinfo;

public class Update extends DbConn{
	public  static List<ViewTeacherinfo> UpdateoneUserByphone(int id2, String number1) throws SQLException{
		Connection con = DbConn.Link();
		ResultSet result = null;
		List<ViewTeacherinfo> list = new ArrayList<ViewTeacherinfo>();
		System.out.println(id2);
		String sql = "update ZGinfo set NUM=? where EN='"+id2+"'";
		
		PreparedStatement state = con.prepareStatement(sql);
		state.setString(1, number1);
		int juge = state.executeUpdate();
		if(juge!=0){
			String sql1 = "select *from ZGinfo where EN='"+id2+"'";
			PreparedStatement state1 = con.prepareStatement(sql1);
			result = state1.executeQuery();
			while(result.next()){
				int id = result.getInt(1);
				String name = result.getString(2);
				
				String sex = result.getString(4);
				int age = result.getInt(5);
				String number = result.getString(6);
				String card = result.getString(7);
				ViewTeacherinfo info1 = new ViewTeacherinfo(name,id,sex,age,number,card);
				list.add(info1);
			}
		}
		return list;
	}
	
	public  static List<ViewTeacherinfo> UpdateoneUserBycard(int id2, String card1) throws SQLException{
		Connection con = DbConn.Link();
		ResultSet result = null;
		List<ViewTeacherinfo> list = new ArrayList<ViewTeacherinfo>();
		System.out.println(id2);
		String sql = "update ZGinfo set backcard=? where EN='"+id2+"'";
		
		PreparedStatement state = con.prepareStatement(sql);
		state.setString(1, card1);
		int juge = state.executeUpdate();
		if(juge!=0){
			String sql1 = "select *from ZGinfo where EN='"+id2+"'";
			PreparedStatement state1 = con.prepareStatement(sql1);
			result = state1.executeQuery();
			while(result.next()){
				int id = result.getInt(1);
				String name = result.getString(2);
				
				String sex = result.getString(4);
				int age = result.getInt(5);
				String number = result.getString(6);
				String card = result.getString(7);
				ViewTeacherinfo info1 = new ViewTeacherinfo(name,id,sex,age,number,card);
				list.add(info1);
			}
		}
		return list;
}
}
