package com.srk.dbc;

import com.srk.data.*;

import java.util.ArrayList;
import java.sql.*;
// import java.text.SimpleDateFormat;

public class DatabaseConnection {
	private static final String DBDRIVER = "com.mysql.jdbc.Driver";
//	private static final String DBURL = "jdbc:mysql://localhost:3306/jobwebdatabase";
	private static final String DBURL = "jdbc:mysql://localhost:3306/stark";
	private static final String DBUSR = "root";
	private static final String DBPASSWD = "@@@cwx6796038";
	private static final int per_page = 20;
	
	private Connection connection=null;
	private Statement stmt = null;
	private ResultSet res = null;
	private ArrayList<CompanyData> comList = new ArrayList<CompanyData>();
//	private SimpleDateFormat formatter = new SimpleDateFormat("YYYY-MM-DD");
	
	public DatabaseConnection(int page_num ) throws Exception{	
		System.out.println("begin");
		try{
			Class.forName(DBDRIVER);
			System.out.println("connecting to database...");
			connection = DriverManager.getConnection(DBURL, DBUSR, DBPASSWD);
			
			System.out.println("Create statement...");
			stmt = connection.createStatement();
			System.out.println("create statement success");
			String sql;
			Integer begin_index = per_page*(page_num-1) + 1;
			Integer end_index = per_page*page_num;
//			sql = "select * from Companys where comId >= " + begin_index.toString() + " and comId <=" + end_index.toString();
			sql = "select * from starkjobs where id >= " + begin_index.toString() + " and id <=" + end_index.toString();
			System.out.println(sql);
			res = stmt.executeQuery(sql);			
			
			while(res.next()){
//				int id = res.getInt("comId");
//				String name = res.getString("comName");
//				String date = res.getString("pubTime");
//				String place = res.getString("heldPlace");
//				String url = res.getString("msgUrl");
//				String school = res.getString("srcSchool");

				int id = res.getInt("id");
				String name = res.getString("title");
				System.out.println(name);
				String place = res.getString("place");
				System.out.println(place);
				String url = res.getString("link");
				String date = res.getDate("time").toString();
				System.out.println(date);
				String school = res.getString("school");
				
				CompanyData data = new CompanyData();
				data.setComId(id);
				data.setComName(name);
				data.setPubTime(date);
				data.setHeldPlace(place);
				data.setMsgUrl(url);
				data.setSrcSchool(school);
				
				comList.add(data);
				
				data = null;
			}
			res.close();
			
		}catch(Exception e){
			System.out.println("open database error");
			throw e;
		}finally{
			
		}
	}
	
	public ArrayList<CompanyData> getComList(){
		return comList;
	}
	
	public void close() throws Exception{
		if (connection != null){
			try{
				connection.close();
			}catch (Exception e2){
				throw e2;
			}
		}
	}
}
