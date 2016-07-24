package com.srk.usrdb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html"); 
		response.setCharacterEncoding("utf8"); 
		PrintWriter out = response.getWriter(); 
		
//		out.print("hello");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String user_type = request.getParameter("user_type");
		String schoolname = request.getParameter("schoolname");
		String email_no = request.getParameter("email_no");
		String phone_no = request.getParameter("phone_no");
		
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/jobwebdatabase"; // Á¬½Óµ½ house_stark Êý¾Ý¿â 
		String userid="root"; // ÓÃ»§ 
		String passwd="@@@cwx6796038"; // ÃÜÂë
		try{
			Class.forName(driver);
		}catch(Exception e){
			out.println(" 连接 "+driver+"失败!");
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection(url,userid,passwd);
			out.println("run");
			if(!con.isClosed()){
				Statement pstatement;
	            ResultSet res;
				
	            
	            out.print(username);
	            String sql = "select username from user_info where username = '" + username + "'";
	            out.println(sql);
	            pstatement = con.createStatement();
				out.println("run2");
				res = pstatement.executeQuery(sql);
				out.println("run3");
				if(res.next()){
					out.println("run4");
					out.println("<font size='2'>"); 
					out.println("此用户名已被注册！请<a href='register.jsp'>点此</a>返回注册页面<br>"); 
					out.print("</font>");
				}
				else{
					String sql_insert = null;
					sql_insert = "insert into user_info values(";
					sql_insert += username;
					sql_insert += password;
					sql_insert += user_type.toString();
					sql_insert += schoolname;
					sql_insert += email_no;
					sql_insert += phone_no;
					sql_insert += "-1)";
					pstatement.executeUpdate(sql_insert);
					
//					pstatement=con.prepareStatement("insert into user_info values(?,?,?,?,?,?,?)");
//					pstatement.setString(1,username);
//					pstatement.setString(2,password);
//					pstatement.setInt(3,Integer.parseInt(user_type));
//					pstatement.setString(4,schoolname);
//					pstatement.setString(5,email_no);
//					pstatement.setString(6,phone_no);
//					pstatement.setInt(7,-1);
//					pstatement.executeUpdate();
					
					out.println("<font size='2'>"); 
					out.println("注册成功<br>"); 
					out.print("</font>");
				}
				pstatement.close();
				res.close();
				con.close();
			}
		}catch(SQLException SQLe){
			out.println("无法连接数据库!");
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
