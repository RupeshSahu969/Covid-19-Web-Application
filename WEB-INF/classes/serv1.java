import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class serv1 extends HttpServlet
{
	PrintWriter pw;
	public void service(HttpServletRequest reg ,HttpServletResponse res)
		throws IOException, ServletException
	{
  
		pw=res.getWriter();
		 ("text/html");
		
		pw.println("<body bgcolor=rupesh text=white>");
		
		pw.println("<p>&nbsp;");
		
		
		pw.println("<p>&copy; Rupesh-2021");


	   }
} 