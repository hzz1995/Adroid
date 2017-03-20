package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Login_user;
import com.util.Login;

public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("gg");
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		String id = req.getParameter("id");
		int number = Integer.parseInt(id);
		String psw = req.getParameter("password");
		String role = req.getParameter("role");
		HttpSession session = req.getSession();
		session.setAttribute("logininfo", new Login_user(number,psw,role));
		int previlage=0;
		try {
			int count = Login.Islogin1(id);
			if(count==1 && role ==null)
				out.print("正确");
			else if(count==0 && role ==null)
				out.print("错误");
			else{
			previlage = Login.Islogin(id, psw, role);
			if(previlage==1){
			    resp.sendRedirect("User.jsp");
			}
			else if(previlage==2){
				resp.sendRedirect("SalManage.jsp");
			}
			else if(previlage==3){
				resp.sendRedirect("MyJsp.jsp");
			}
			else{
				/*
				 * 不存在此用户，跳转
				 */
			}
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}
	
	

}
