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
 * Servlet implementation class Request
 */
@WebServlet("/Request")
public class Request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Request() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		String own=request.getParameter("owner");
		System.out.println("Owner Name: "+own);
		
		String cat=request.getParameter("caty");
		System.out.println("Category: "+cat);

		Oregbean rq=new Oregbean();
		rq.setName(own);
		rq.setCategory(cat);
		
		Interr jj=new Imple();
		int w=jj.req(rq);
		if(w==1)
		{
			response.sendRedirect("Reqsendsuccess.jsp");
		}
		else
		{
			response.sendRedirect("Fnf.jsp");
		}
		
	}

}
