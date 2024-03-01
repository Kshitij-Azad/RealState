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

@WebServlet("/PropertyAddServlet")
public class PropertyAddServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		data da =new data();
		da.setId(Integer.parseInt(request.getParameter("t1")));
		da.setName(request.getParameter("t2"));
		da.setContact(Integer.parseInt(request.getParameter("t3")));
		da.setPropertname(request.getParameter("t4"));
		da.setPrice(Integer.parseInt(request.getParameter("t5")));
		da.setType(request.getParameter("t6"));
		da.setStatus(request.getParameter("t7"));
		da.setSubtype(request.getParameter("t8"));
		da.setBedroom(request.getParameter("t9"));
		da.setBathroom(request.getParameter("t10"));
		da.setCity(request.getParameter("t11"));
		da.setPin(Integer.parseInt(request.getParameter("t12")));
		da.setDeatils(request.getParameter("t13"));
		da.setArea(Integer.parseInt(request.getParameter("t14")));
		da.setMeasurement(request.getParameter("t15"));
		da.setImg(request.getParameter("t16"));
		da.setAddress(request.getParameter("t17"));
		da.setLocation(request.getParameter("t18"));
		DBService db = new DBService();
		int x=db.addproperty(da);
			if(x>0)
			{
				request.setAttribute("sms", "<font color=green ;style=text-align: center;> Property Uploaded Successfully</font>");
			}
			else
			{
				request.setAttribute("sms", "<font color=red ;style=margin-left: 2rem;> Property Could not  be Uploaded</font>");
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/AddProperty.jsp");
	 		rd.include(request, response);
	}
}
