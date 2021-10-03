<%@ include file="dbcon1.jsp"%>
<%
 String verify=request.getParameter("verify");
String vid=request.getParameter("vid");
String cid=request.getParameter("cid");


if(verify!=null)
{
if(verify.equals("RPR01"))
{
	response.sendRedirect("myproject1_centerfrm.jsp");
}
else
	response.sendRedirect("myproject1_welcome.jsp");
}


 if(vid!=null)
{
	 rs=stat.executeQuery("select *from Covid_table2 where vid='"+vid+"'");
	if(rs.next())
	{
		session.setAttribute("vid",vid);
		response.sendRedirect("myproject1_userreport.jsp");
		
	}
	
	else
	{
		response.sendRedirect("myproject1_welcome.jsp");
	}
}

if(cid!=null)
{
	if(cid.equals("RPR01"))
	{
		session.setAttribute("cid",cid);
		response.sendRedirect("myproject1_centerreport.jsp");
	}
	else
	{
		response.sendRedirect("myproject1_welcome.jsp");
	}
}
%>