package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DBService;
import com.dto.Login;


@WebServlet("/deleteadminServlet")
public class deleteadminServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Login l = new Login();
		l.setUserid(request.getParameter("t1"));
		System.out.println("11");
		DBService db = new DBService();
		String target="";
		int x = db.deleteadmin(l);
		if(x>0)
		{
			request.setAttribute("sms", "Admin Deleted");
			target="deleteadmin.jsp";
		}
		else
		{
			request.setAttribute("sms", "Admin Could Not  Deleted");
			target="deleteadmin.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/"+target);
		rd.forward(request, response);
	}
}
