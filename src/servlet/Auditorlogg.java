package servlet;

import implement.Imple;
import interfa.Interr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Auditregbean;

/**
 * Servlet implementation class Auditorlogg
 */
@WebServlet("/Auditorlogg")
public class Auditorlogg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Auditorlogg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String email=request.getParameter("email");
		System.out.println("Email"+email);
		
		String pas=request.getParameter("password");
		System.out.println("Email"+pas);
		
		Auditregbean ii=new Auditregbean();
		ii.setEmail(email);
		ii.setPass(pas);
		
		Interr p=new Imple();
		boolean r=p.auditlog(ii);
		if(r==true)
		{
			response.sendRedirect("Auditormain.jsp");
		}
		else
		{
			response.sendRedirect("404.jsp");
		}
	}

}
