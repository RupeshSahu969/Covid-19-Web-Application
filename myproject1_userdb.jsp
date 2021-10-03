<body background='covid.jpg'></body>
<%@include file ="dbcon1.jsp"%>
<%
String nm=request.getParameter("nm");
String age=request.getParameter("age");
String mbno=request.getParameter("mbno");
String aadhar=request.getParameter("aadhar");
String day=request.getParameter("day");

rs=stat.executeQuery("select *from Covid_table1 order by vid desc ");
String cd="";
if(!rs.next())
{
	cd="V0001";
}
else
{
	String cd1=rs.getString("vid");
	cd1=cd1.substring(1);
	int n=Integer.parseInt(cd1);
	n++;
	if(n>=0 && n<10)
	cd="V000"+n;
	else if(n>=10 && n<100)
	cd="V00"+n;
	else if(n>=100 && n<1000)
	cd="V0"+n;
	else if(n>=1000 && n<10000)
	cd="V"+n;
}

 
rs=stat.executeQuery("select * from Covid_table1 where aadhar=' "+aadhar+" '");
if(rs.next())
{
%>
	<jsp:forward page="myproject1_userfrm.jsp?abc=inv"/>
<%
}
else 
{
		String s="0123456789";
		int n=aadhar.length();
		for(int i=0;i<n;i++)
		{
			if(s.indexOf(aadhar.charAt(i))==-1)
			{
%>
			<jsp:forward page="myproject1_userfrm.jsp?abc=count"/>
<%

			}
			
		}	
	if(aadhar.length()!=12)
	{
%>
		<jsp:forward page="myproject1_userfrm.jsp?abc=no"/>
<%	
	}
	else
	{
	String qry="insert into Covid_table1 values(' "+nm+" ',' "+age+" ',' "+mbno+" ',' "+aadhar+" ','"+day+"','"+cd+"')";
	stat.executeUpdate(qry);

%>
<p>&nbsp;
<p>&nbsp;
<p>&nbsp;
<center>


<b><font color=blue>Welcome..<h4><%=nm%></h4></font>
<p>
Remember your Vaccination ID:<font color=red><h4><b><u><%=cd%></u></b></h4></font>
<p>
"Thanks for registrtion"
<p>
After 4 Days of  registration date you can go for vaccination to the R.k.Hospital ,Raipur.
<p>
Time:-10:00 am to 05:00 pm.



<%
}
}
%>
<p>&nbsp;


<table border=2 bgcolor=#F2D2BD >
<tr>
<th><font color=#9F2B68>Name
<th><font color=#9F2B68>Age
<th><font color=#9F2B68>Mobile no.
<th><font color=#9F2B68>UId(Aadhar) no.
<th><font color=#9F2B68>Date
<tr>
<td><b><font color=blue><%=nm%>
<td><b><font color=blue><%=age%>
<td><b><font color=blue><%=mbno%>
<td><b><font color=blue><%=aadhar%>
<td><b><font color=blue><%=day%>
<tr>
</table>
<form action="myproject1_welcome.jsp">
<input type=submit value="Go to Home">
</form>