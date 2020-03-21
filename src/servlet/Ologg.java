package servlet;

import implement.Imple;
import interfa.Interr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Oregbean;


/**
 * Servlet implementation class Ologg
 */
@WebServlet("/Ologg")
public class Ologg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ologg() {
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
		  
		String email1=request.getParameter("Name");
		HttpSession session=request.getSession();
		response.getContentType();
		session.setAttribute("email1", email1);
		
		System.out.println("Email:"+email1);
		  
		  String pas=request.getParameter("Password");
		  System.out.println("Password"+pas);
		  
		  Oregbean ol=new Oregbean();
			ol.setName(email1);
			ol.setPass(pas);
			
			Interr i=new Imple();
			boolean r=i.olog(ol);
			if(r==true)
			{
				response.sendRedirect("Omainpage.jsp");
			}
			else
			{
				response.sendRedirect("Error");
			} 	
	}

}
