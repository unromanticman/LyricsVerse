<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page language="java" import="org.json.JSONArray,org.json.JSONException" %>

<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@include file="db.config.jsp"%>
<%
request.setCharacterEncoding("UTF-8");


Connection con = null;
Statement stmt = null; 
String query = ""; 

String term = request.getParameter("term");

//1.首頁limit 八個 無搜尋

//2.搜尋包含參數

if(term.equals("INDEX8")){
	//不使用參數搜尋並只取8個

	try{
	    Class.forName("com.mysql.jdbc.Driver").newInstance();
	    con = DriverManager.getConnection(DBDSN);
	    stmt = con.createStatement();
	    query = "select * from  w10540.tblyrics , w10540.tbuser where  w10540.tbuser.account =  w10540.tblyrics.uploadUser ORDER BY  w10540.tblyrics.`uploadDate` DESC limit 8";
	    ResultSet rs = stmt.executeQuery(query); 

	    int rowcount = 0;

		JSONArray list = new JSONArray();

		while(rs.next())
		{
			JSONObject obj=new JSONObject();
			obj.put("title", rs.getString("title"));
			obj.put("verse", rs.getString("verse"));
			obj.put("uploadDate", rs.getString("uploadDate"));
			obj.put("account", rs.getString("account"));
			obj.put("name", rs.getString("name"));
			list.put(obj);
		}

		out.print(list);


	}
	catch(SQLException sqle){
	 	JSONObject json = new JSONObject();
		json.put("msg", "failed");
		json.put("status", sqle);
		String output = json.toString();
		out.println(output);
	}

}
else{
	//使用參數搜尋無上限
	try{
	    Class.forName("com.mysql.jdbc.Driver").newInstance();
	    con = DriverManager.getConnection(DBDSN);
	    stmt = con.createStatement();
	    query = "select * from  w10540.tblyrics , w10540.tbuser where ( verse LIKE '%"+term+"%' or title LIKE '%"+term+"%' or info Like '%"+term+"%' ) and  w10540.tbuser.account = w10540.tblyrics.uploadUser";
	    ResultSet rs = stmt.executeQuery(query); 

	    int rowcount = 0;

		JSONArray list = new JSONArray();

		while(rs.next())
		{
			JSONObject obj=new JSONObject();
			obj.put("title", rs.getString("title"));
			obj.put("verse", rs.getString("verse"));
			obj.put("uploadDate", rs.getString("uploadDate"));
			obj.put("account", rs.getString("account"));
			obj.put("name", rs.getString("name"));
			list.put(obj);
		}

		out.print(list);


	}
	catch(SQLException sqle){
	 	JSONObject json = new JSONObject();
		json.put("msg", "failed");
		json.put("status", sqle);
		String output = json.toString();
		out.println(output);
	}



}



%>
