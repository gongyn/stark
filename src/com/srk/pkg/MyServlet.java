package com.srk.pkg;

import com.srk.dbc.*;
import com.srk.data.*;
import java.util.ArrayList;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.ServletOutputStream;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	
//		response.setHeader("Content-type","text/html;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
//		ServletOutputStream out = response.getOutputStream();
//		out.write("你好");
		try{
			DatabaseConnection connector = new DatabaseConnection(1);
			ArrayList<CompanyData> comList = connector.getComList();
			int msgNum = comList.size();
//			 = new CompanyData();
			
			for (int i=0;i<msgNum;++i){
				CompanyData tmpData =comList.get(i);
				printData(tmpData,out);
				out.print("</br>");
			}
		
		}catch(Exception e){
			out.print("读取数据库错误");
			System.exit(0);
		}		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public static void printData(CompanyData data,PrintWriter out){
		String herf = data.getMsgUrl();
		String out_str = "<a href = "+ "\"" + herf + "\"" + ">" + data.getComName() + "</a>";

		System.out.println(out_str);
		out_str += data.getHeldPlace();
		out_str += data.getPubTime();
		out_str += data.getSrcSchool();
		try{
			out.print(out_str);
		}catch (Exception e){
			System.out.println("read error");
		}
	}

}
