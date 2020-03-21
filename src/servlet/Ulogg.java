package servlet;

import implement.Imple;
import interfa.Interr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Uregbean;

/**
 * Servlet implementation class Ulogg
 */
@WebServlet("/Ulogg")
public class Ulogg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ulogg() {
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
		
		Uregbean ii=new Uregbean();
		ii.setEmail(email);
		ii.setPass(pas);
		
		Interr p=new Imple();
		boolean r=p.ulog(ii);
		if(r==true)
		{
			response.sendRedirect("Umainpage.jsp");
		}
		else
		{
			response.sendRedirect("Error");
		}
	}

}
