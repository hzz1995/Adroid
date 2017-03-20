package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Update;
import com.entity.Login_user;
import com.entity.ViewTeacherinfo;

public class UpdateServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		Login_user user = (Login_user) req.getSession().getAttribute("logininfo");
		int id= user.getId();
		String Type = req.getParameter("repayStatus");
		
		String content = req.getParameter("content");
		System.out.println(content);
		
		if(Type.equals("number")){
			try {
				List<ViewTeacherinfo> list = Update.UpdateoneUserByphone(id,content);
				req.getSession().setAttribute("SearchInfo", list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			}
		
		if(Type.equals("card")){
			try {
				List<ViewTeacherinfo> list = Update.UpdateoneUserBycard(id,content);
				req.getSession().setAttribute("SearchInfo", list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			}
	}

}
