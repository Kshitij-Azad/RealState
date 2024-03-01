package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DBService;
import com.dto.data;

@WebServlet("/PropertyDeleteServlet")
public class PropertyDeleteServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		data da =new data();
		da.setId(Integer.parseInt(request.getParameter("s1")));
		DBService db= new DBService();
		int x=db.deleteproperty(da);
		if(x>0)
		{
			request.setAttribute("sms", "<font color=green ;style=text-align: center;> Property Deleted Successfully</font>");
		}
		else
		{
			request.setAttribute("sms", "<font color=red ;style=margin-left: 2rem;> Property Could not  be Deleted</font>");
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/PropertyDeleteServlet");
 		rd.include(request, response);
	}
}
