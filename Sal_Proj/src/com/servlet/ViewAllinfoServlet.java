package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Mani_Db;
import com.entity.ViewTeacherinfo;

public class ViewAllinfoServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
			/*
			 * ��ѯ����
			 */
			String level = req.getParameter("1");
			
			/*
			 * �޸Ĺ���
			 */
			@SuppressWarnings("unused")
			String Type = req.getParameter("repayStatus");
			
			String content = req.getParameter("content");
			System.out.println(content);
			
			/*
			 * ��ѯ����
			 */
				if(level.equals("all")){
				try {
					
					List<ViewTeacherinfo> list = Mani_Db.GetAllUser();
					req.getSession().setAttribute("SearchInfo", list);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				}
				if(level.equals("id")){
					try {
						List<ViewTeacherinfo> list = Mani_Db.GetoneUser(content);
						req.getSession().setAttribute("SearchInfo", list);
					} catch (SQLException e) {
						e.printStackTrace();
					}
					}
				if(level.equals("name")){
					try {
						List<ViewTeacherinfo> list = Mani_Db.GetoneUserByname(content);
						req.getSession().setAttribute("SearchInfo", list);
					} catch (SQLException e) {
						e.printStackTrace();
					}
					}
				
				

				
				
			}

	

	
}
