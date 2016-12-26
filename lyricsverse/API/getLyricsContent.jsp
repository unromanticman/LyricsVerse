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

String id = request.getParameter("id");


	try{
	    Class.forName("com.mysql.jdbc.Driver").newInstance();
	    con = DriverManager.getConnection(DBDSN);
	    stmt = con.createStatement();
	    query = "select * from  w10540.tblyrics , w10540.tbuser where  w10540.tbuser.account =  w10540.tblyrics.uploadUser and (w10540.tblyrics.`id` = '"+id+"')";
	    ResultSet rs = stmt.executeQuery(query); 

		JSONArray list = new JSONArray();

		while(rs.next())
		{
			JSONObject obj=new JSONObject();
			obj.put("title", rs.getString("title"));
			obj.put("verse", rs.getString("verse"));
			obj.put("uploadDate", rs.getString("uploadDate"));
			obj.put("account", rs.getString("account"));
			obj.put("name", rs.getString("name"));
			obj.put("link", rs.getString("link"));
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



%>
