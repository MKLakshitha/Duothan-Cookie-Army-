package com.Kavindu;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Servlet implementation class MakeG2
 */
public class MakeG2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeG2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id =request.getParameter("id");

		try {
			        Statement st;
			        String sql;
					String url="jdbc:mysql://localhost:3306/duothan?useSSL=false&allowPublicKeyRetrieval=True";
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection(url,"root","Kavindu84");
					st= (Statement) con.createStatement();
					
					
			
		            RequestDispatcher dispatcher=null;
					    
				    sql ="Update citizen set role='pharmacy' where memberID='"+id+"' ";
				     st.executeUpdate(sql);
				  
				    	   response.sendRedirect("adminDashboard/html/Staff.jsp");
				     


			}catch(Exception e) {
				e.printStackTrace();
			}

			}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	
	}
	}


