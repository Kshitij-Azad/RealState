package com;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbs.DBService;
import com.dto.Login;

@WebServlet("/AddAdminServlet")
public class AddAdminServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Login l = new Login();
		l.setUserid(request.getParameter("t1"));
		l.setPassword(request.getParameter("t2"));
		l.setName(request.getParameter("t3"));
		System.out.println("11");
		DBService db = new DBService();
		String target="";
		int x = db.createadmin(l);
		if(x>0)
		{
			request.setAttribute("sms", "Admin Added");
			target="addadmin.jsp";
		}
		else
		{
			request.setAttribute("sms", "Admin Could Not  Added");
			target="addadmin.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/"+target);
		rd.forward(request, response);
	}
}
