<body background="covid5.jpg" style="background-size:fixed;">
<%@ include file="dbcon1.jsp"%>
<%
	
	String nm=request.getParameter("nm");
	String vid=request.getParameter("vid");
	String age=request.getParameter("age");
	String mbno=request.getParameter("mbno");
	String aadhar=request.getParameter("aadhar");
	String day=request.getParameter("day");
	String dose=request.getParameter("dose");
	String vnm=request.getParameter("vnm");
	String vdt=request.getParameter("vdt");

	rs=stat.executeQuery("select *from Covid_table2 where vid='"+vid+"'");
	if(!rs.next())
	{	
		String qry="insert into Covid_table2 values(' "+nm+" ',' "+age+" ',' "+mbno+" ',' "+aadhar+" ','"+day+"','"+dose+"','"+vnm+"',' "+vdt+" ','"+vid+"')";
		stat.executeUpdate(qry);
	}
	else
	{
		String s=rs.getString("dose");
		if(s.equals(dose))
		{
			
		}
		else
		{	
			String qry="insert into Covid_table2 values(' "+nm+" ',' "+age+" ',' "+mbno+" ',' "+aadhar+" ','"+day+"','"+dose+"','"+vnm+"',' "+vdt+" ','"+vid+"')";
			stat.executeUpdate(qry);


				String qry1="";
			if(vnm.equals("Covishield"))
			{
			 qry1="update Covid_table3 set cvs=cvs-1";
			stat.executeUpdate(qry1);
			}
			else if(vnm.equals("Covaxin"))
			{
			 qry1="update Covid_table3 set cvx=cvx-1";
			stat.executeUpdate(qry1);
	
			}
			else 
			{
			qry1="update Covid_table3 set sv=sv-1";
			stat.executeUpdate(qry1);
			}
		}
	}	
%>
<center>
<p>&nbsp;
<p>&nbsp;
<p>&nbsp;
<font color=BLUE><h2>Submitted.......!<p></font>
<h3>The Vaccinator :<%=nm%>is successfully Vaccinated.<p>
"Thanks four your Contribution to Make"
<p>"An"

<h1><font color=orange>COVID&nbsp;<font color=white>FREE&nbsp;<font color=#006400>INDIA

<%
		
		String qry="";
		rs=stat.executeQuery("select *from Covid_table3");
		rs.next();
		int n1=rs.getInt("cvs");
		int n2=rs.getInt("cvx");
		int n3=rs.getInt("sv");
		int n4=n1+n2+n3;
		qry="update Covid_table3 set total = "+n4+" ";
		stat.executeUpdate(qry);
	if(n1<0)
	{
		qry="update Covid_table3 set cvs=0";
		stat.executeUpdate(qry);
	}
	 if(n2<0)
	{
		qry="update Covid_table3 set cvx=0";
		stat.executeUpdate(qry);	
	}
	if(n3<0)
	{
		qry="update Covid_table3 set sv=0";
		stat.executeUpdate(qry);		
	}
		

%>
<p>
<table border=2 bgcolor=#F2D2BD >
<tr>
<th><font color=#9F2B68>Vaccination ID
<th><font color=#9F2B68>Name
<th><font color=#9F2B68>Age
<th><font color=#9F2B68>Mobile no.
<th><font color=#9F2B68>UId(Aadhar) no.
<th><font color=#9F2B68>Registration Date
<th><font color=#9F2B68>Dose
<th><font color=#9F2B68>Vaccine name
<th><font color=#9F2B68>Vaccination Date

<tr>
<td align=center><b><font color=blue><%=vid%>
<td align=center><b><font color=blue><%=nm%>
<td align=center><b><font color=blue><%=age%>
<td align=center><b><font color=blue><%=mbno%>
<td align=center><b><font color=blue><%=aadhar%>
<td align=center><b><font color=blue><%=day%>
<td align=center><b><font color=blue><%=dose%>
<td align=center><b><font color=blue><%=vnm%>
<td align=center><b><font color=blue><%=vdt%>
<tr>
</table>
<form action="myproject1_welcome.jsp">
<input type=submit value="Go to Home">
</form>
