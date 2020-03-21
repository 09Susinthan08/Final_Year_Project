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
 * Servlet implementation class Auditregg
 */
@WebServlet("/Auditregg")
public class Auditregg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Auditregg() {
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
		
		String name=request.getParameter("name");
		System.out.println("Name"+name);
		
		String email=request.getParameter("email");
		System.out.println("Email"+email);
		
		String num=request.getParameter("number");
		System.out.println("Number"+num);
		
		String desig=request.getParameter("desig");
		System.out.println("Designation"+desig);
		
		String pas=request.getParameter("password");
		System.out.println("Password"+pas);
		
		String cpas=request.getParameter("conpassword");
		System.out.println("Conpassword"+cpas);
		
		Auditregbean a=new Auditregbean();
		a.setName(name);
		a.setEmail(email);
		a.setNumber(num);
		a.setDesignation(desig);
		a.setPass(pas);
		a.setConpass(cpas);
		
		Interr r=new Imple();
		int s=r.auditreg(a);
		if(s==1)
		{
			response.sendRedirect("Auditorlog.jsp");
		}
		else
		{
			response.sendRedirect("Error");
		}

		
	}

}
