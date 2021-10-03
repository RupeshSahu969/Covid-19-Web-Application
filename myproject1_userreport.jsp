<%@ include file="dbcon1.jsp"%>
<center>
<p>&nbsp;

<%
String vid=(String)session.getAttribute("vid");
if(vid==null)
{
	out.println("<font color=blue></b>Please login First....!</font></b>");	
}
else
{
%>
<h1><u><font color=orange>R.K Hospital & Health Care Organization</font></u></h1>
<h2><u><font color=skyblue>Your Report</font></u></h2><br>
<font color=red>Vaccination ID</font>:<%=vid%>
<%
rs=stat.executeQuery("select *from Covid_table2");
md=rs.getMetaData();
int c=md.getColumnCount();
%>
<table>
<tr>
<td>&nbsp;
<tr bgcolor=#aaaaaa>
<%
String label[]={"Name","Age","Mobile no","Aadhar no","Registration Date","Vaccination ID","Vaccine name","Vaccination Date","Vaccination ID"};
for(int i=0;i<label.length;i++)
{
	out.println("<th>"+label[i]);	
}
rs=stat.executeQuery("select *from Covid_table2 where vid='"+vid+"'");
int n=0;
while(rs.next())
{
	n++;
	if(n%2!=0)
	out.println("<tr bgcolor=#eeeee>");
	else
	out.println("<tr bgcolor=#ddddd>");
	
	for(int i=1;i<=c;i++)
	{
	out.println("<td align=center>"+rs.getString(i));	
	}
	
}
%>
</table border=2 width=50% height=60%>
<%
session.invalidate();
%>
	<b>After, 30 Days of your 1st Vaccination Dose.You are capable to take your 2nd Dose.</b><br>
<marquee direction="up" scrollamount="1"><center>Note:<font color=red>If you have already taken 2nd dose of vaccination.Then you don't need to take another dose of vaccination</font></marquee>
<p>&nbsp;
<font color=skyblue>&copy;Romesh-2021
<%
}
%>
<p>&nbsp;

