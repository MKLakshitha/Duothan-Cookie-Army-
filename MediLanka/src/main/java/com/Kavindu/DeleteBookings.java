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
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class DeleteBookings
 */
public class DeleteBookings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBookings() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		try {
			        Statement st;
			        String sql;
					String url="jdbc:mysql://localhost:3306/cab_management_system?useSSL=false&allowPublicKeyRetrieval=True";
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection(url,"root","");
					st= (Statement) con.createStatement();
					
					String id = request.getParameter("id");
				
		            RequestDispatcher dispatcher=null;
		            sql= "Delete from fuel where RegNo = '"+id+"'";
		            st.executeUpdate(sql);
				
		           response.sendRedirect( "adminDashboard/html/StaffBooking.jsp");
				    
				    
		            
				    

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
