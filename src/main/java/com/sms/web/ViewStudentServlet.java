package com.sms.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/viewStudents")
public class ViewStudentServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<String[]> students = new ArrayList<>();
		
		try {
			Connection con = DBConnection.getConnection();
			Statement st= con.createStatement();
			
			ResultSet rs = st.executeQuery("select * from students");
			
			while(rs.next()) {
				String[] s = new String[4];
				s[0] = rs.getString("id"); 
				s[1] = rs.getString("name"); 
				s[2] = rs.getString("email"); 
				s[3] = rs.getString("course"); 
				
				students.add(s);
			}
			
		}
		catch(Exception e){	
			e.printStackTrace();
		}
		
		request.setAttribute("students", students);
		request.getRequestDispatcher("viewStudents.jsp")
								.forward(request, response);
	}
	
	
}
