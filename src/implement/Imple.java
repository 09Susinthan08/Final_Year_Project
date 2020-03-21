package implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbconn.Dbcon;
import bean.Auditregbean;
import bean.Oregbean;
import bean.Setkey;
import bean.Uploadbean;
import bean.Uregbean;
import interfa.Interr;

public class Imple implements Interr{

	Connection con;
	public int oreg(Oregbean orb) {
		int sk=0;
		try{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO blockchain.oregg VALUES(?,?,?,?,?,?)");
		    ps.setString(1, orb.getName());
		    ps.setString(2, orb.getEmail());
		    ps.setString(3, orb.getNumber());
		    ps.setString(4, orb.getCategory());
		    ps.setString(5, orb.getPass());
		    ps.setString(6, orb.getCpass());
		    sk=ps.executeUpdate();	
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return sk;
	}


	public boolean olog(Oregbean olb) {
		boolean ks=false;
		try
		{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM blockchain.oregg where name=? and pass=?");
			ps.setString(1, olb.getName());
			ps.setString(2, olb.getPass());			
			ResultSet rs=ps.executeQuery();
			ks=rs.next();	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ks;
	}

	
	public int key(Setkey ks) {
		int d=0;
		try
		{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO blockchain.keystore VALUES(?,?,?)");
			ps.setString(1, ks.getName());
			ps.setString(2, ks.getCaty());
			ps.setString(3, ks.getSkey());
			
			d=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return d;
	}


	@Override
	public int file(Uploadbean upb) {
		int dd=0;
		try
		{
			con=Dbcon.CreateConnection();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO blockchain.fileupload  VALUES(?,?,?,?,?,?,?,?)");
			 ps.setString(1, upb.getFilename());
			 ps.setString(2, upb.getFiletype());
			 ps.setString(3, upb.getFilekey());
			 ps.setString(4, upb.getFilesize());
			 ps.setString(5, upb.getFilecontent());
			 ps.setString(6, upb.getFileencrypt());
			 ps.setString(7, upb.getFiledecrypt());
			 ps.setString(8,"Not Accepted");
			 
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}


	public int req(Oregbean rq) {
		int aa=0;
	      try
	      {
	    	  con=Dbcon.CreateConnection();
	    	  PreparedStatement ps=con.prepareStatement("INSERT INTO blockchain.request VALUES(?,?,?)");
	    	  ps.setString(1, rq.getName());
	    	  ps.setString(2, rq.getCategory());
	    	  ps.setString(3, "Request");
	    	  aa=ps.executeUpdate();
	   
	      }

		catch(Exception e)
		{
			e.printStackTrace();
		}
			
			return aa;
	}


	@Override
	public int ureg(Uregbean urb) {
		int sk=0;
		try{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO blockchain.userregg VALUES(?,?,?,?,?)");
		    ps.setString(1, urb.getName());
		    ps.setString(2, urb.getEmail());
		    ps.setString(3, urb.getNumber());
		    ps.setString(4, urb.getPass());
		    ps.setString(5, urb.getCpass());
		    sk=ps.executeUpdate();	
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return sk;
	}


	public boolean ulog(Uregbean ulb) {
		boolean ks=false;
		try
		{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM blockchain.userregg where email=? and pass=?");
			ps.setString(1, ulb.getEmail());
			ps.setString(2, ulb.getPass());			
			ResultSet rs=ps.executeQuery();
			ks=rs.next();	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ks;
	}


	public int auditreg(Auditregbean aur) {
		int sk=0;
		try{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO blockchain.auditorregg VALUES(?,?,?,?,?,?)");
		    ps.setString(1, aur.getName());
		    ps.setString(2, aur.getEmail());
		    ps.setString(3, aur.getNumber());
		    ps.setString(4, aur.getDesignation());
		    ps.setString(5, aur.getPass());
		    ps.setString(6, aur.getConpass());
		    sk=ps.executeUpdate();	
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return sk;
	}



	public boolean auditlog(Auditregbean aul) {
		boolean ks=false;
		try
		{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM blockchain.auditorregg where email=? and pass=?");
			ps.setString(1, aul.getEmail());
			ps.setString(2, aul.getPass());			
			ResultSet rs=ps.executeQuery();
			ks=rs.next();	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ks;
	}


	@Override
	public int freq(Uploadbean frq) {
		int aa=0;
	      try
	      {
	    	  con=Dbcon.CreateConnection();
	    	  PreparedStatement ps=con.prepareStatement("INSERT INTO blockchain.filerequest VALUES(?,?,?,?)");
	    	  ps.setString(1, frq.getFilename());
	    	  ps.setString(2, frq.getFiletype());
	    	  ps.setString(3, frq.getFilekey());
	    	  ps.setString(4, "Request");
	    	  aa=ps.executeUpdate();
	   
	      }

		catch(Exception e)
		{
			e.printStackTrace();
		}
			
			return aa;
	}


	@Override
	public int resp(Uploadbean frp) {
		int aa=0;
	      try
	      {
	    	  con=Dbcon.CreateConnection();
	    	  PreparedStatement ps=con.prepareStatement("INSERT INTO blockchain.fileresponse VALUES(?,?,?,?)");
	    	  ps.setString(1, frp.getFilename());
	    	  ps.setString(2, frp.getFiletype());
	    	  ps.setString(3, frp.getFilekey());
	    	  ps.setString(4, "Accept");
	    	  aa=ps.executeUpdate();
	   
	      }

		catch(Exception e)
		{
			e.printStackTrace();
		}
			
			return aa;
	}

}
