<%@include file="dbcon1.jsp"%>
<center>
<head>
<style>



.form-popup {
  display: none;
  position: fixed;
  bottom: 250px;
  right: 250px;
  border: 3px solid #f1f1f1;;
  z-index: 9;
}

.form-popup1 {
  display: none;
  position: fixed;
  bottom: 250px;
  right: 380px;
  border: 3px solid #f1f1f1;;
  z-index: 9;
}

.form-popup3 {
  display: none;
  position: fixed;
  bottom: 230px;
  right: 480px;
  border: 3px solid #f1f1f1;;
  z-index: 9;
}


.form-container {
  max-width: 300px;
  border:2;
  border-color:black;
  padding: 10px;
  background-color: white;
}

.form-container1 {
  max-width: 500px;
  border:2;
  border-color:black;
  padding: 10px;
  background-color: white;
}

.form-container3{
  max-width: 500px;
  border:2;
  border-color:black;
  padding: 10px;
  background-color: white;
}


.login-button {
  background-color: #4F7942;
  color: white;
  padding: 16px 20px;
  border: 3;
border-color:black;
  border-radius:10px;
  cursor: pointer;
  opacity: 0.8;
  position: center;
  bottom: 23px;
  right: 28px;
  width: 200px;
}

.login-button1 {
  background-color: skyblue;
  color: white;
  padding: 16px 20px;
  border: 3;
border-color:black;
  border-radius:10px;
  cursor: pointer;
  opacity: 0.8;
  position: center;
  bottom: 23px;
  right: 28px;
  width: 200px;
}

.login-button2 {
  background-color:red;
  color: white;
  padding: 16px 20px;
  border: 3;
border-color:black;
  border-radius:10px;
  cursor: pointer;
  opacity: 0.8;
  position: center;
  bottom: 23px;
  right: 28px;
  width: 200px;
}



</style>
</head>
<body>
<p>&nbsp;
<%
String cid=(String)session.getAttribute("cid");
if(cid==null)
{
	
	out.println("<font color=blue></b>Please login First....!</font></b>");	
}
else
{
%>
<h1><u><font color=orange>R.K Hospital & Health Care Organization</font></u></h1>
<h4><font color=red>Centet ID:</font>RPR01</h4>
<h2><u><font color=skyblue>Report</font></u></h2><br>

<button class="login-button" onclick="openForm()">Vaccinated Citizens</button>
<div class="form-popup" id="myForm">
  <form action= class="form-container">
<table border=0>
<tr>
<tr >
<th colspan=9 align=center bgcolor=#F2D2BD><h3>Vaccinated Citizens</h3>
<tr>
	<%
	String label[]={"Name","Age","Mobile no","Aadhar no","Registration Date","Dose","Vaccine name","Vaccination Date","Vaccination ID"};
	rs=stat.executeQuery("select *from Covid_table2");
	md=rs.getMetaData();
	int c=md.getColumnCount();
	for(int i=0;i<label.length;i++)
	{
		out.println("<th bgcolor=#aaaaaa>"+label[i]);
	}
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
	<tr>
	<td colspan=9 align=right> <button type="button" class="btn-cancel" onclick="closeForm()">Close</button>
	</table>
	</form>
	</div>





<button class="login-button1" onclick="openForm1()">Registered Citizens</button>
<div class="form-popup1" id="myForm1">
  <form action= class="form-container1">
<table border=0>
<tr>
<tr >
<th colspan=9 align=center bgcolor=#F2D2BD><h3>Registered Citizens</h3>
<tr>
	<%
	String label1[]={"Name","Age","Mobile no","Aadhar no","Registration Date","Vaccination ID"};
	rs=stat.executeQuery("select *from Covid_table1");
	md=rs.getMetaData();
	int c1=md.getColumnCount();
	for(int i=0;i<label1.length;i++)
	{
		out.println("<th bgcolor=#aaaaaa>"+label1[i]);
	}
	int n1=0;
	while(rs.next())
	{
		n1++;
		if(n1%2!=0)
		out.println("<tr bgcolor=#eeeee>");
		else
		out.println("<tr bgcolor=#ddddd>");
	for(int i=1;i<=c1;i++)
	{
		out.println("<td align=center>"+rs.getString(i));
	}
	}
%>
	<tr>
	<td colspan=9 align=right> <button type="button" class="btn-cancel" onclick="closeForm1()">Close</button>
   

   
</center>
  </table>
  </form>
</div>
<br>
<%
int r=0;
rs=stat.executeQuery("select *from Covid_table1");
while(rs.next())
r++;


int r1=0;
rs=stat.executeQuery("select *from Covid_table2");
while(rs.next())
r1++;


%>
<p>&nbsp;
<table border=0 width=50% height=20%>
<tr>
<th colspan=2 bgcolor=skyblue>Vaccinator Polling
<tr>
<tr>
<td align=left><b>Registered Citizens:<%=r%>%</b>
<tr>
<td align=left><%out.println("<hr color=gray size=20 width='"+r+"%'>");%>
<tr>
<td align=left><b>Vaccinated Citizens:<%=r1%>%</b>
<tr>
<td align=left><%out.println("<hr color=gray size=20 width='"+r1+"%'>");%>

<tr>
</table>

<p>&nbsp;
<p>&nbsp;
<button class="login-button2" onclick="openForm3()">Vaccination stock Update</button>
<div class="form-popup3" id="myForm3">
  <form  action="myproject1_centerreport.jsp"  class="form-container3">
    <h1><font color=skyblue>Stock Updation</font></h1>	
<p>&nbsp;
<p>&nbsp;
    <label for="Covishield" ><b>Covishield:</b></label>
    <input type="text" placeholder="Quantity" name="cvs"  >
<p>&nbsp;
      <label for="Covaxin" ><b>Covaxin:</b></label>
    <input type="text" placeholder="Quantity" name="cvx"  >
<p>&nbsp;
     <label for="Spunk-V" ><b>Spunk-V:</b></label>
    <input type="text" placeholder="Quantity" name="sv"  >
<p>&nbsp;
    <center>
    <button type="submit" class="btn"><b>Update</b></button>
    <button type="button" class="btn cancel" onclick="closeForm3()"><b>Close</b></button>
 </center>
  </form>
</div>



<%

	rs=stat.executeQuery("select *from Covid_table3");
	rs.next();
	int rk1=rs.getInt("cvs");
	int rk2=rs.getInt("cvx");
	int rk3=rs.getInt("sv");
	int n5,n2,n3;
	String cvs1=request.getParameter("cvs");
	String cvx1=request.getParameter("cvx");
	String sv1=request.getParameter("sv");
	
	if(cvs1!=null)
		 n5=Integer.parseInt(cvs1);
	else
		n5=0;

	if(cvx1!=null)
	 n2=Integer.parseInt(cvx1);
	else
		n2=0;

	if(sv1!=null)
	 n3=Integer.parseInt(sv1);
	else
		n3=0;
	
	int tot=n5+n3+n3+rk1+rk2+rk3;

	
	
	if(tot>=100)
	{
		out.println("<font color=red><h5>Stock is full....!</h5></font>");
	}
	else
	{
	stat.executeUpdate("update Covid_table3 set cvs=cvs+"+n5+" ");
	stat.executeUpdate("update Covid_table3 set cvx=cvx+"+n2+" ");
	stat.executeUpdate("update Covid_table3 set sv=sv+"+n3+" ");
	stat.executeUpdate("update Covid_table3 set total="+tot+" ");
	}
	
%>
<p>&nbsp;
<table border=0 width=50% height=20%>
<tr>
<th colspan=2 bgcolor=skyblue>Vaccination Stock Polling
<tr>
<tr>
<td align=left><b>Covishield:<%=rk1+n5%>%</b>
<tr>
<td align=left><%out.println("<hr color=gray size=20 width='"+(rk1+n5)+"%'>");%>
<tr>
<td align=left><b>Covaxin:<%=rk2%>%</b>
<tr>
<td align=left><%out.println("<hr color=gray size=20 width='"+(rk2+n2)+"%'>");%>
<tr>
<td align=left><b>Spunk-V:<%=rk3%>%</b>
<tr>
<td align=left><%out.println("<hr color=gray size=20 width='"+(rk3+n3)+"%'>");%>
<tr>
<td align=left><b>Total Quantity:<%=tot%>%</b>
<tr>
<td align=left><%out.println("<hr color=red size=20 width='"+tot+"%'>");%>
<tr>
</table>
<p>&nbsp;
<p>&nbsp;

<%
	if(tot<10)
	{
		out.println("<b><h4>Note:<font color=red>Your Stock has less quantity of vaccine.You should order for new stocks...!</font></h4></b>");
	}
session.invalidate();
}
%>
<p>&nbsp;
<font color=skyblue>&copy;Romesh-2021</font>
<form action="myproject1_welcome.jsp">
<input type=submit value="Go to Home">
</form>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
 }

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}

function openForm1() {
  document.getElementById("myForm1").style.display = "block";
}

function closeForm1() {
  document.getElementById("myForm1").style.display = "none";
}

function openForm3() {
  document.getElementById("myForm3").style.display = "block";
}

function closeForm3() {
  document.getElementById("myForm3").style.display = "none";
}
</script>