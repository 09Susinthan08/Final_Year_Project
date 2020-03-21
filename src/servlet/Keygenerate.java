package servlet;

import implement.Imple;
import interfa.Interr;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Setkey;
import java.util.HashMap;
/**
 * Servlet implementation class Keygenerate
 */
@WebServlet("/Keygenerate")
public class Keygenerate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Keygenerate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String KEY_NAME="";
		String KEY_SK="";
		String KEY_CAT="";
//
		String name=request.getParameter("ownername");
		System.out.println("Owner Name"+name);
		
		String sk=request.getParameter("skey");
		System.out.println("Skey"+sk);
		
		String cat=request.getParameter("caty");
		System.out.println("Category"+cat);
	
			  
		 // Create a HashMap object called capitalCities
	   //HashMap<String, String> hash = new HashMap<String, String>();

	    // Add keys and values (Country, City)
	  //  hash.put(KEY_NAME, name);
	  //  hash.put(KEY_SK, sk);
	  //  hash.put(KEY_CAT, cat);
	   // capitalCities.put("USA", "Washington DC");
	 
	    
			
		
	/*	Setkey ks=new Setkey();
		ks.setName(KEY_NAME);
		ks.setSkey(KEY_SK);
		ks.setCaty(KEY_CAT);
		*/
		Setkey ks=new Setkey();
		ks.setName(name);
		ks.setSkey(sk);
		ks.setCaty(cat);
		
		Interr g=new Imple();
		int k = 0;
		k = g.key(ks);
		if(k==1)
		{
			response.sendRedirect("Keysendsuccess.jsp");
		}
		else
		{
			response.sendRedirect("Error");
		}
	}

}
