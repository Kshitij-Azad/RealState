package com.dbs;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dto.*;

public class DBService 
{
	Connection con =null;
	public DBService() 
	{	
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/realestate","root","");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	// User Login method
	
	public boolean user(Login l)
	{
		boolean isValid = false;
		try
		{
			PreparedStatement ps =con.prepareStatement("select * from userlogin where userid = ? and password = ?");
			ps.setString(1, l.getUserid());
			ps.setString(2,l.getPassword());
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				isValid=true;
			}
			else
			{
				isValid=false;
			}
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return isValid;
	}
	
	//Admin Login method
	public boolean admin(Login l)
	{
		boolean isValid = false;
		try
		{
			PreparedStatement ps =con.prepareStatement("select * from adminlogin where userid = ? and password = ?");
			ps.setString(1, l.getUserid());
			ps.setString(2,l.getPassword());
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				isValid=true;
			}
			else
			{
				isValid=false;
			}
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return isValid;
	}
	//Create method
	public int create(Login l)
	{
		int x=0;
		try
		{
			PreparedStatement ps =con.prepareStatement("insert into userlogin values(?,?,?)");
			ps.setString(1, l.getName());
			ps.setString(2, l.getUserid());
			ps.setString(3,l.getPassword());
			x= ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return x;
	}
	
	//forget method
	public int forget(Login l)
	{
		int x=0;
		try
		{
			PreparedStatement ps =con.prepareStatement("update userlogin set password=? where userid=?");
			ps.setString(1, l.getPassword());
			ps.setString(2, l.getUserid());
			x= ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return x;
	}
	
	//Display All User/Admin
	
	public ArrayList<Login> userdisplayl()
	{
		ArrayList< Login> al = new ArrayList<Login>();
		try
		{
				PreparedStatement ps = con.prepareStatement("select * from userlogin");
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					Login dp= new Login();
					dp.setUserid(rs.getString("userid"));
					dp.setName(rs.getString("name"));
					al.add(dp);
				}
		}
		catch(Exception e)
		{
			
		}
		return al;
	}
	
	public ArrayList<Login> admindisplayl()
	{
		ArrayList< Login> al1 = new ArrayList<Login>();
		try
		{
				PreparedStatement ps = con.prepareStatement("select * from adminlogin");
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					Login dp= new Login();
					dp.setUserid(rs.getString("userid"));
					dp.setName(rs.getString("name"));
					al1.add(dp);
				}
		}
		catch(Exception e)
		{
			
		}
		return al1;
	}
	// Add Property
	
	public int addproperty(data da)
	{
		int x=0;
		try
		{
			PreparedStatement ps =con.prepareStatement("insert into data values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, da.getId());
			ps.setString(2,da.getName());
			ps.setInt(3,da.getContact());
			ps.setString(4,da.getPropertname());
			ps.setInt(5,da.getPrice());
			ps.setString(6,da.getType());
			ps.setString(7,da.getStatus());
			ps.setString(8,da.getSubtype());
			ps.setString(9,da.getBedroom());
			ps.setString(10,da.getBathroom());
			ps.setString(11,da.getCity());
			ps.setInt(12,da.getPin());
			ps.setString(13,da.getDeatils());
			ps.setInt(14,da.getArea());
			ps.setString(15,da.getMeasurement());
			ps.setString(16,da.getImg());
			ps.setString(17,da.getAddress());
			ps.setString(18,da.getLocation());			
			x= ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return x;
	}
	
	//Delete Property
	
	public int deleteproperty(data da)
	{
		int x=0;
		try
		{
			PreparedStatement ps =con.prepareStatement("delete from data where id=?");
			ps.setInt(1, da.getId());			
			x= ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return x;
	}
	
	//Search Property
	
	public boolean search(data d1)
	{
		boolean isValid=false;
		try
		{
			PreparedStatement ps = con.prepareStatement("select * from data where id  = ?");
			ps.setInt(1, d1.getId());
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				ps.setString(1,d1.getName());
				ps.setInt(2,d1.getContact());
				ps.setString(3,d1.getPropertname());
				ps.setInt(4,d1.getPrice());
				ps.setString(5,d1.getType());
				ps.setString(6,d1.getStatus());
				ps.setString(7,d1.getSubtype());
				ps.setString(8,d1.getBedroom());
				ps.setString(9,d1.getBathroom());
				ps.setString(10,d1.getCity());
				ps.setInt(11,d1.getPin());
				ps.setString(12,d1.getDeatils());
				ps.setInt(13,d1.getArea());
				ps.setString(14,d1.getMeasurement());
				ps.setString(15,d1.getImg());
				ps.setString(16,d1.getAddress());
				ps.setString(17,d1.getLocation());
                isValid= true;
            } 
			else 
            {
				isValid= false;
            }
		}
		catch(Exception e)
		{
			
		}
		return isValid;
	}
	
	// Add Admin 
	
	public int createadmin(Login l)
	{
		int x=0;
		try
		{
			PreparedStatement ps =con.prepareStatement("insert into adminlogin values(?,?,?)");
			ps.setString(1, l.getName());
			ps.setString(2,l.getUserid());
			ps.setString(3, l.getPassword());
			x= ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		System.out.println(x);
		return x;
	}
	
	public int deleteadmin(Login l)
	{
		int x=0;
		try
		{
			PreparedStatement ps =con.prepareStatement("delete from adminlogin where userid =?");
			ps.setString(1,l.getUserid());
			x= ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		System.out.println(x);
		return x;
	}
	
	public ArrayList<data> getAllProperty()
	{
		ArrayList<data> al = new ArrayList<data>();
		try 
		{
		
		PreparedStatement ps = con.prepareStatement("select * from data");

		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			data s = new data();
			s.setId(rs.getInt("id"));
			s.setName(rs.getString("name"));
			s.setContact(rs.getInt("contact"));
			s.setPropertname(rs.getString("propertname"));
			s.setPrice(rs.getInt("price"));
			s.setType(rs.getString("type"));
			s.setStatus(rs.getString("status"));
			s.setSubtype(rs.getString("subtype"));
			s.setBedroom(rs.getString("bedroom"));
			s.setBathroom(rs.getString("bathroom"));
			s.setCity(rs.getString("city"));
			s.setPin(rs.getInt("pin"));
			s.setDeatils(rs.getString("deatils"));
			s.setArea(rs.getInt("area"));
			s.setMeasurement(rs.getString("measurement"));
			s.setImg(rs.getString("img"));
			s.setAddress(rs.getString("address"));
			s.setLocation(rs.getString("location"));
			al.add(s);
		}
	}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return al;
	}
	
	public data getproperty(int rno)
	{
		data s = new data();
		try
		{
			PreparedStatement ps = con.prepareStatement("select * from data where id = ?");
			ps.setInt(1, rno);
			ResultSet rs = ps.executeQuery();
			if(rs.next()==true)
			{
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setContact(rs.getInt("contact"));
				s.setPropertname(rs.getString("propertname"));
				s.setPrice(rs.getInt("price"));
				s.setType(rs.getString("type"));
				s.setStatus(rs.getString("status"));
				s.setSubtype(rs.getString("subtype"));
				s.setBedroom(rs.getString("bedroom"));
				s.setBathroom(rs.getString("bathroom"));
				s.setCity(rs.getString("city"));
				s.setPin(rs.getInt("pin"));
				s.setDeatils(rs.getString("deatils"));
				s.setArea(rs.getInt("area"));
				s.setMeasurement(rs.getString("measurement"));
				s.setImg(rs.getString("img"));
				s.setAddress(rs.getString("address"));
				s.setLocation(rs.getString("location"));
			}
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return s;
	}
	public int modifyproperty(data d1)
	{
		int x=0;
	
	try 
	{
	
	PreparedStatement ps = con.prepareStatement("update data set name = ?,contact = ?,propertname=?,price=?,type=?,status=?,subtype=?,bedroom=?,bathroom=?,city=?,pin=?,deatils=?,area=?,measurement=?,img=?,address=?,location=? where id = ?");

	ps.setString(1,d1.getName());
	ps.setInt(2,d1.getContact());
	ps.setString(3,d1.getPropertname());
	ps.setInt(4,d1.getPrice());
	ps.setString(5,d1.getType());
	ps.setString(6,d1.getStatus());
	ps.setString(7,d1.getSubtype());
	ps.setString(8,d1.getBedroom());
	ps.setString(9,d1.getBathroom());
	ps.setString(10,d1.getCity());
	ps.setInt(11,d1.getPin());
	ps.setString(12,d1.getDeatils());
	ps.setInt(13,d1.getArea());
	ps.setString(14,d1.getMeasurement());
	ps.setString(15,d1.getImg());
	ps.setString(16,d1.getAddress());
	ps.setString(17,d1.getLocation());
	ps.setInt(18,d1.getId() );
	x = ps.executeUpdate();
	
	}
	catch (Exception e) {
		System.out.println(e);
	}
	
	return x;
}
	public ArrayList<data> Propertydisplayl()
	{
		ArrayList< data> al1 = new ArrayList<data>();
		try
		{
				PreparedStatement ps = con.prepareStatement("select * from data");
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					data dp= new data();
					dp.setImg(rs.getString("img"));
					dp.setName(rs.getString("name"));
					dp.setId(rs.getInt("id"));
					dp.setStatus(rs.getString("status"));
					dp.setArea(rs.getInt("area"));
					dp.setCity(rs.getString("city"));
					dp.setPrice(rs.getInt("price"));
					dp.setMeasurement(rs.getString("measurement"));
					dp.setPin(rs.getInt("pin"));
					al1.add(dp);
					
				}
		}
		catch(Exception e)
		{
			
		}
		return al1;
	}
}
