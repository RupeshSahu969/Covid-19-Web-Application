package com.rup;
public class bean3
{
	String name,sal;
	public bean3()
	{
	}
	public void setName(String name)
	{
		this.name=name;
	}
	public void setSal(String sal)
	{
		this.sal=sal;
	}
	public String getName()
	{
		return name;
	}
	public String getSal()
	{
		return sal;
	}
	public String getDesg()
	{
		
		String d="";			
		double s= Double.parseDouble(sal);
		if(s>=50)
			d="CEO";
		
		else if(s>=20)
			d="Developer";
		else
			d="programmer";
		return d;
	}
}
			
		
		
		

		
		
		
			