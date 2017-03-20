package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.SalQuery;

public class SalQueryA extends DbConn{
	public static List<SalQuery> Queryall() throws SQLException{
		Connection con = DbConn.Link();
		java.sql.ResultSet result = null;
		List<SalQuery> list = new ArrayList<SalQuery>();
			String sql1 = "select * from SAL";
			PreparedStatement state1 = con.prepareStatement(sql1);
			result=state1.executeQuery();
			while(result.next()){
				int id = result.getInt(1);
				int jb =result.getInt(2);
				int ks =result.getInt(3);
				int jt = result.getInt(4);
				System.out.println(jb);
				 SalQuery sal = new SalQuery(id, jb, ks, jt);
				list.add(sal);	
			}
			
			return list;

	}
	public static List<SalQuery> QuerysalById(int number) throws SQLException{
		Connection con = DbConn.Link();
		java.sql.ResultSet result = null;
		List<SalQuery> list = new ArrayList<SalQuery>();
			String sql1 = "select * from SAL where EN='"+number+"'";
			PreparedStatement state1 = con.prepareStatement(sql1);
			result=state1.executeQuery();
			while(result.next()){
				int id = result.getInt(1);
				int jb =result.getInt(2);
				int ks =result.getInt(3);
				int jt = result.getInt(4);
				System.out.println(jb);
				 SalQuery sal = new SalQuery(id, jb, ks, jt);
				list.add(sal);	
			}
			
			return list;

	}
}
