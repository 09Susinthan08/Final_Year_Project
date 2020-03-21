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
 * Servlet implementation class Uregg
 */
@WebServlet("/Uregg")
public class Uregg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Uregg() {
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
		
		String pas=request.getParameter("password");
		System.out.println("Password"+pas);
		
		String cpas=request.getParameter("conpassword");
		System.out.println("Name"+cpas);
		
		Uregbean ub=new Uregbean();
		ub.setName(name);
		ub.setEmail(email);
		ub.setNumber(num);
		ub.setPass(pas);
		ub.setCpass(cpas);
		
		Interr i=new Imple();
		int r=i.ureg(ub);
		if(r==1)
		{
			response.sendRedirect("Ulogin.jsp");
		}
		else
		{
			response.sendRedirect("Error");
		}
		
	}

}
