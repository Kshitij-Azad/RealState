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

@WebServlet("/CreateServlet")
public class CreateServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Login l = new Login();
		l.setName(request.getParameter("c1"));
		l.setUserid(request.getParameter("c2"));
		l.setPassword(request.getParameter("c3"));
		DBService db = new DBService();
		String target="";
		int x = db.create(l);
		if(x>0)
		{
			HttpSession session = request.getSession(false);
			if(session!=null)
			{
				session.invalidate();
			}
			session = request.getSession(true);
			session.setAttribute("username", l.getName());
			target="home.jsp";
		}
		else
		{
			request.setAttribute("sms", "Invalid Data");
			target="create.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/"+target);
		rd.forward(request, response);
	}
}
