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

@WebServlet("/ModifyPropertyServlet")
public class ModifyPropertyServlet extends HttpServlet 
{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		data s= new data();
		s.setId(Integer.parseInt(request.getParameter("t1")));
		s.setName(request.getParameter("t2"));
		s.setContact(Integer.parseInt(request.getParameter("t3")));
		s.setPropertname(request.getParameter("t4"));
		s.setPrice(Integer.parseInt(request.getParameter("t5")));
		s.setType(request.getParameter("t6"));
		s.setStatus(request.getParameter("t7"));
		s.setSubtype(request.getParameter("t8"));
		s.setBedroom(request.getParameter("t9"));
		s.setBathroom(request.getParameter("t10"));
		s.setCity(request.getParameter("t11"));
		s.setPin(Integer.parseInt(request.getParameter("t12")));
		s.setDeatils(request.getParameter("t13"));
		s.setArea(Integer.parseInt(request.getParameter("t14")));
		s.setMeasurement(request.getParameter("t15"));
		s.setImg((request.getParameter("t16")));
		s.setAddress(request.getParameter("t17"));
		s.setLocation(request.getParameter("t18"));

		DBService db = new DBService();
		int x = db.modifyproperty(s);
		if(x>=1)
		{
			request.setAttribute("sms","<font color=green ;style=text-align: center;> Data  Updated Successfully</font>");
		}
		else
		{
			request.setAttribute("sms","<font color=red ;style=margin-left: 2rem;> Data Could Not Be Updated</font>");	
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/ModifyProperty.jsp");
		rd.forward(request, response);
	}
}
