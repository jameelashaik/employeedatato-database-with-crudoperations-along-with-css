package in.apcfss.controller;

import in.apcfss.service.CRUDOPerations;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class dayspresentservlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String status=null;
		PrintWriter pw = null; 
		try{
			pw = res.getWriter();
			status = CRUDOPerations. dayspresent(req, res);
			if("success...".equals(status)){
				pw.println("sucess added for employee dayspresent attendence");
				RequestDispatcher rd = req.getRequestDispatcher("/payslipemp.jsp");
				rd.forward(req, res);

			}
			else{
				pw.println("failed added employee dayspresent attendence");
			}
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("exception cathedc for add employee");
		}
		finally{
			pw.close();
		}
	}
}
