
<body background='covid1.jpg'>
<center>
<p>&nbsp;
<p>&nbsp;
<%
String a=request.getParameter("abc");
if(a!=null)
{
	if(a.equals("inv"))
	{
		out.println("<font color=orange>UID no. already exist..</font>");
	}
	if(a.equals("no"))
	{
		out.println("<font color=orange>The UID no. must be 12 digits.</font>");
	}
	if(a.equals("count"))
	{
		out.println("<font color=orange>The UID no. must be digits...</font>");
	}
	
}
%>
<form name=frm method=get action=myproject1_userdb.jsp>
<table bgcolor=#F0FFFF border=4 width=46% bordercolor=#FFBF00 style='border-collapse:1'>
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
<td>Name:
<td><input type=text name=nm required>
<tr>
<td>Age:
<td><input type=text name=age required>
<tr>
<td>Mobile no:
<td><input type=text name=mbno>
<tr>
<tr>
<td>UID(Aadhar) no:
<td><input type=text name=aadhar required >
<tr>
<tr>
<td>Date:
<td><input type=date name=day required>
<tr>
<td>&nbsp;
<tr>
<font color=blue>
<td colspan=2 align=center><input type=submit value='Register' >
</font>
<tr>
<td>&nbsp;
</table>
</table>
</form>

<p>&nbsp;
<p>&nbsp;
<p>&nbsp;
<form action="myproject1_welcome.jsp">
<input type=submit value="<<Back">
</form>
<p>&nbsp;
<p>&nbsp;
<marquee bgcolor=#FFFDDO><b><font color=blue>All the world is Fight against COVID-19.Please give you contribution to figh against COVID so that we overcome this problem & situation.Please take vaccines as soon as."Thank you"</marquee>