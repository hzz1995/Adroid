package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.entity.SalQuery;

public class UpdateSal extends DbConn{
	public static void  Update(SalQuery info) throws SQLException{
		System.out.println("1");
		Connection con = DbConn.Link();

		String sql = "insert into SAL values(?,?,?,?)";
		PreparedStatement state = con.prepareStatement(sql);
		state.setInt(1, info.getId());
		state.setInt(2, info.getJbgz());
		state.setInt(3, info.getKsf());
		state.setInt(4, info.getGwjt());
		state.executeUpdate();
		
	}
}
