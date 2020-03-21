package servlet;

import implement.Imple;
import interfa.Interr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Oregbean;

/**
 * Servlet implementation class Oregg
 */
@WebServlet("/Oregg")
public class Oregg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Oregg() {
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
		
		String mail=request.getParameter("email");
		System.out.println("Name"+mail);
		
		String numb=request.getParameter("num");
		System.out.println("Name"+numb);
		
		String caty=request.getParameter("area");
		System.out.println("Name"+caty);
		
		String pas=request.getParameter("password");
		System.out.println("Name"+pas);
		
		String cpas=request.getParameter("cpassword");
		System.out.println("Name"+cpas);
		
		Oregbean orb=new Oregbean();
		orb.setName(name);
		orb.setEmail(mail);
		orb.setNumber(numb);
		orb.setCategory(caty);
		orb.setPass(pas);
		orb.setCpass(cpas);
		
		Interr i=new Imple();
		int r=i.oreg(orb);
		if(r==1)
		{
			response.sendRedirect("OLogin.jsp");
		}
		else
		{
			response.sendRedirect("Error");
		}
		
	}

}
