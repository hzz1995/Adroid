package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UpdateSal;
import com.dao.SalQueryA;
import com.entity.SalQuery;

public class SalaryCountServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		String id = req.getParameter("id");
		int number = Integer.parseInt(id);
		
		String jb = req.getParameter("jbgz");
		int jbgz = Integer.parseInt(jb);
		String ks = req.getParameter("ksf");
		int ksf =Integer.parseInt(ks);
		String jt = req.getParameter("gwjt");
		int gwjt =Integer.parseInt(jt);
		
		
		SalQuery info =	new SalQuery(number,jbgz,ksf,gwjt);
		List<SalQuery> list = new ArrayList<SalQuery>();
		try {
			UpdateSal.Update(info);
			list = SalQueryA.Queryall();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		super.getServletContext().setAttribute("salinfo", list);	
	}
	
}
