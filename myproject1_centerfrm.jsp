<body background='covid3.jpg'>
<%@ include file="dbcon1.jsp"%>
<center>
<p>&nbsp;
<marquee bgcolor=#FFFDDO><b><font color=red>All the world is Fight against COVID-19.Please give your contribution to figh against COVID so that we overcome this problem & situation.Please take vaccines as soon as."Thank you"</marquee>
<h2><font color=black><u>R.K Hospital & Health Care Organization ,Raipur</u> </font></h2><p>
<h4><b><font color=red>Center ID:</font><font color=blue>RPR01</font></h4></b	>
<form name=frm >
<table bgcolor=#F0FFFF border=4 width=46% bordercolor=#8B0000 style='border-collapse:1'>
<tr>
<th bgcolor=#000000 ><h4><b><font color=white>Vaccination &nbsp;ID:</font></h4></b>
<tr>
<td bgcolor=#BC8F8F>&nbsp;
<tr>
<td>
<table border=0 width=50% align=center>
<tr>
<td>&nbsp;
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>&nbsp;&nbsp;<input type=text name=vid>
<tr>
<font color=blue>
<td colspan=2 align=center><input type=submit value='Search'>
</font>
<tr>
<td>&nbsp;
</table>
</table>
</form>
<p>&nbsp;
<p>&nbsp;

<%
String vid=request.getParameter("vid");
rs=stat.executeQuery("select *from Covid_table1 where vid= '"+vid+"'");
if(!rs.next())
{
%>
<font color=red><h4><%out.println("Does not exist........!");%></h4></font>	
<%
}
else
{
%>
<center>
<p>&nbsp;
<form name=frm method=get action=myproject1_centerdb.jsp>
<table bgcolor=#F0FFFF border=4 width=46% bordercolor=#8B0000 style='border-collapse:1'>
<tr>
<th bgcolor=#000000 ><h2><b><font color=orange>COVID</font>&nbsp;<font color=white>FREE</font>&nbsp;<font color=green>INDIA</font></h2></b>
<tr>
<td bgcolor=#BC8F8F>&nbsp;
<tr>
<td>
<table border=0 width=50% align=center>
<tr>
<td>&nbsp;
<tr>
<td><font color=blue>Name:
<td><input type=text name=nm value='<%=rs.getString("nm")%>'readonly>
<td><input type=hidden name=vid value='<%=vid%>'>
<tr>
<td><font color=blue>Age:
<td><input type=text name=age value='<%=rs.getString("age")%>'readonly>
<tr>
<td><font color=blue>Mobile no:
<td><input type=text name=mbno value='<%=rs.getString("mbno")%>'>
<tr>
<tr>
<td><font color=blue>UID(Aadhar) no:
<td><input type=text name=aadhar value='<%=rs.getString("aadhar")%>'readonly>
<tr>
<tr>
<td><font color=blue>Registration Date:
<td><input type=date name=day value='<%=rs.getDate("day")%>'readonly>
<tr>
<%
	int n;
	rs=stat.executeQuery("select *from Covid_table2 where vid='"+vid+"' ");
	if(!rs.next())
		n=1;
	else
		n=2;
		
%>
<td><font color=blue>Dose:
<td><input type=text name=dose value=<%=n%>>
<tr>
<%
	String r="";
	rs=stat.executeQuery("select *from Covid_table3");
	rs.next();
	
		int n1=rs.getInt("cvs");
		int n2=rs.getInt("cvx");
		int n3=rs.getInt("sv");
	
	if(n1>=n2 && n1>n3)
	{
		r="Covishield";
	}
	else if(n2>=n3 && n2>n1)
	{
		r="Covaxin";
	}
	else
	r="Sputnik-V";
%>
<td><font color=blue>Vaccine name:
<td><input type=text name=vnm value=<%=r%> >
<tr>
<td><font color=blue>Vaccination Date:
<td><input type=date name=vdt required>
<tr>
<td>&nbsp;
<tr>
<font color=blue>
<td colspan=2 align=center><input type=submit value='Submit'>
</font>
<tr>
<td>&nbsp;
</table>
</table>
</form>
<%
}
%>
<form action="myproject1_welcome.jsp">
<input type=submit value="<<Back">
</form>
