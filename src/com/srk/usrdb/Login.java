package com.srk.usrdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html"); 
		response.setCharacterEncoding("utf8"); 
		PrintWriter out = response.getWriter(); 
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String user_type = request.getParameter("user_type");
		
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/jobwebdatabase"; // Á¬½Óµ½ house_stark Êý¾Ý¿â  

		String userid="root"; // ÓÃ»§ 
		String passwd="@@@cwx6796038"; // ÃÜÂë
		try{
			Class.forName(driver);
		}catch(Exception e){
			out.println(" 连接 "+driver+" 失败 !");
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection(url,userid,passwd);
//			out.print("run");
			if(!con.isClosed()){
				PreparedStatement pstatement;
	            ResultSet res;
				
				pstatement = con.prepareStatement("select*from user_info where username = username");
//				out.print("run");
				res =pstatement.executeQuery();
				if(res.next()){
					String temp = res.getString("password");
					if(password.equals(temp)){
//						out.print("Hello");
						response.sendRedirect("http://localhost:8080/WebApp/job_show.jsp");
//						out.println("<a href='job_show.jsp'></a>");
					}
					else{
						out.println("<font size='2'>"); 
						out.println("用户名或密码错误！<a href='register.jsp'>点此</a>返回登录界面<br>"); 
						out.print("</font>");
					}
				}				
				pstatement.close();
				res.close();
				con.close();
			}
//			if(!con.isClosed())
//			out.println(" ³É¹¦µÇÂ¼!");
		}catch(SQLException SQLe){
			out.println(" 无法连接数据库 !");
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
