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




@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Login l = new Login();
		l.setUserid(request.getParameter("l1"));
		l.setPassword(request.getParameter("l2"));
		DBService db = new DBService();
		String target="";
		String op = request.getParameter("l3");	
		if(op.equals("User"))
		{
			boolean isValid = db.user(l);
			if(isValid == true)
			{
				HttpSession session = request.getSession(false);
				if(session!=null)
				{
					session.invalidate();
				}
				session = request.getSession(true);
				session.setAttribute("username", l.getUserid());
				session.setAttribute("r", " User");
				
				target="userhome.jsp";
			}
			else
			{
				request.setAttribute("sms", "Invalid Username/Password");
				target="login.jsp";
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/"+target);
			rd.forward(request, response);
		}
		if(op.equals("Admin"))
		{
				boolean isValid = db.admin(l);
				if(isValid == true)
				{
					HttpSession session = request.getSession(false);
					if(session!=null)
					{
						session.invalidate();
					}
					session = request.getSession(true);
					session.setAttribute("username", l.getUserid());
					session.setAttribute("r", " Admin");
					target="adminhome.jsp";
				}
				else
				{
					request.setAttribute("sms", "Invalid Username/Password or Not Admin");
					target="login.jsp";
				}
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/"+target);
				rd.forward(request, response);
		}
	}
}
