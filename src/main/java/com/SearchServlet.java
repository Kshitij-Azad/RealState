package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DBService;

import com.dto.data;


@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		DBService db = new DBService();	
		ArrayList<data>al = db.getAllProperty();
		request.setAttribute("searchallproperty", al);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/Search.jsp");
		rd.forward(request, response);
	}
}
