package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConn {
		static	Connection conn = null;	
		public static Connection Link() {
			try {	//数据库登录名和密码和URL
			String name = "SYSTEM";
			String password = "s14436320";
			String url = "jdbc:oracle:thin:@10.1.5.212:1521:hzz";
			
				
						Class.forName("oracle.jdbc.driver.OracleDriver");
						conn= DriverManager.getConnection(url,name,password);
						
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			return conn;
		}
	}


