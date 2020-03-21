package servlet;

import implement.Imple;
import interfa.Interr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Uploadbean;

/**
 * Servlet implementation class Filerequest
 */
@WebServlet("/Filerequest")
public class Filerequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Filerequest() {
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


		String file=request.getParameter("fname");
		System.out.println("Filename: "+file);
		
		String type=request.getParameter("ftype");
		System.out.println("Filetype:"+type);
		
		String key=request.getParameter("key");
		System.out.println("Key:"+key);
		
		Uploadbean rq=new Uploadbean();
		rq.setFilename(file);
		rq.setFiletype(type);
		rq.setFilekey(key);
		
		Interr jj=new Imple();
		int w=jj.freq(rq);
		if(w==1)
		{
			response.sendRedirect("Reqsendsuccess1.jsp");
		}
		else
		{
			response.sendRedirect("Fnf.jsp");
		}
	}

}
