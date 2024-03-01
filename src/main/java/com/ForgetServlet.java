package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbs.DBService;
import com.dto.Login;

@WebServlet("/ForgetServlet")
public class ForgetServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Login l = new Login();
		l.setUserid(request.getParameter("l1"));
		l.setPassword(request.getParameter("l2"));
		DBService db = new DBService();
		String target="";
		int x = db.forget(l);
		if(x>0)
		{
			target="login.jsp";
		}
		else
		{
			request.setAttribute("sms", "Invalid Userid");
			target="forget.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/"+target);
		rd.forward(request, response);
	}
}
