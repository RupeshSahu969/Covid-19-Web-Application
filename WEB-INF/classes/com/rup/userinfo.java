package com;
import java.util.*;
public class userinfo implements java.io.Serializable
{
	private String name;	
	private int age;
	
	
	public userinfo()
	{
		
	}
	public void setName(String name)	
	{
		this.name=name;
	}
	public String setName()
	{
		return name;
	}
	public void setAge(int age)
	{
		this.age=age;	
	}
	public int getAge()
	{
		return age;
	}
	public boolean insert()
	{
		try
		{
			
			String	qry="insert into rk_table values('" + name + "'," + age +")";
	
                myconnection m=new myconnection();
		m.connect();
		m.st.executeUpdate(qry);		
			
			return true;
		}
		catch(Exception e)	
		{
			return false;	
		}
	}
}		
				
			
			
			
			
			
				
			






















































	
	