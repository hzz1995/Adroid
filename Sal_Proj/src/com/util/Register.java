package com.util;

import java.sql.SQLException;

import com.dao.Mani_Db;
import com.entity.Userinfo;

public class Register {

	public static boolean Isregistered(String name, int id, String password,
			String password1, String sex, String number, String card){
		if(!password.equals(password1)){
			return false;
		}
		/*
		 * �����и�����жϸ��û���д��ע����Ϣ�Ƿ�Ϸ���
		 */
	      Userinfo info = new Userinfo(name,id,password,sex,18,number,card);
			
		 try {
			 System.out.println("gg4");
			Mani_Db.AddUser(info);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}


}
