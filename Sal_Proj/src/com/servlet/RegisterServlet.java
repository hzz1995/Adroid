package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.util.Register;

public class RegisterServlet extends HttpServlet {

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
		 String name = req.getParameter("name");
		 String password =req.getParameter("psw");
		 String password1 = req.getParameter("psw1");
		 String id = req.getParameter("id");
		 int id1 = Integer.parseInt(id);
		 String sex =req.getParameter("sex");
		 String number=req.getParameter("number");
		 String card=req.getParameter("card");
	
		 
		 if(Register.Isregistered(name, id1, password, password1, sex, number, card))
		 {
			 /*
			  *³É¹¦µÇÂ¼
			  */
			 resp.sendRedirect("login.jsp");
		 }
		 else{
			 /*
			  * Ê§°Ü¡£
			  */
			 System.out.println("gg2");
		 }
		 
	}
	
	

}
