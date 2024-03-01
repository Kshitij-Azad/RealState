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

@WebServlet("/GetPropertyServlet")
public class GetPropertyServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int rno =Integer.parseInt(request.getParameter("s1"));
		DBService db = new DBService();	
		data s = db.getproperty(rno);
		request.setAttribute("property", s);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/ModifyProperty1.jsp");
		rd.forward(request, response);	
	}
}

