import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class serv2 extends HttpServlet
{
	PrintWriter pw;
	public void service(HttpServletRequest reg ,HttpServletResponse res)
		throws IOException, ServletException
	{
  
		pw=res.getWriter();
		 res.setContentType("text/html");
		
		String color=reg.getParameter("color");
		pw.println("<body bgcolor= "  + color + "  text=white>");
		
		pw.println("<p>&nbsp;");
		
		
		pw.println("<p>&copy; Rupesh-2021");


	   }
} 