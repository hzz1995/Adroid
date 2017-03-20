package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Encoding implements Filter{
	 String encoding;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		this.encoding = null;
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain chain) throws IOException, ServletException {
		if(encoding== null){
			encoding = "UTF-8";
			}
			arg0.setCharacterEncoding(encoding);
			chain.doFilter(arg0, arg1);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		this.encoding = arg0.getInitParameter("encoding");
		
	}

}
