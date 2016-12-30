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


	String vid = request.getParameter("id");
	String uid = session.getAttribute("UID").toString();

	
	try{
	    Class.forName("com.mysql.jdbc.Driver").newInstance();
	    con = DriverManager.getConnection(DBDSN);
	    stmt = con.createStatement();
	    query = "SELECT *FROM w10540.`tblyrics` WHERE tblyrics.id = '"+vid+"' and tblyrics.uploadUser = '"+uid+"';";
	    ResultSet rs = stmt.executeQuery(query); 
		int rowcount = 0;
		    if (rs.last()) {
			  rowcount = rs.getRow();
			  rs.beforeFirst(); 
			}

		if(rowcount != 0 ){
			JSONObject json = new JSONObject();
			json.put("msg", "have right");
			json.put("status", "success");
			String output = json.toString();
			out.println(output);
		}
		else{
			JSONObject json = new JSONObject();
			json.put("msg", "no right");
			json.put("status", "failed");
			String output = json.toString();
			out.println(output);
		}

	}
	catch(SQLException sqle){
	 	JSONObject json = new JSONObject();
		json.put("msg", sqle);
		json.put("status", "failed");
		String output = json.toString();
		out.println(output);
	}



%>
