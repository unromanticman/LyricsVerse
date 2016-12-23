<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@include file="db.config.jsp"%>
<%


Connection con = null;
Statement stmt = null; 
String query = ""; 

String uploadUser = "1";
String title = "2";
String info ="3";
String verse = "4";
String id = "1";

try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	con = DriverManager.getConnection(DBDSN);
    stmt = con.createStatement();
    query = "UPDATE w10540.tblyrics SET verse= '"+verse+"' , title = '"+title+"' , uploadUser = '"+uploadUser+"' , info = '"+info+"' WHERE id=1";
	
	stmt.executeUpdate(query);

	JSONObject json = new JSONObject();
	json.put("msg", "success");
	json.put("status", "update verse success");
	String output = json.toString();
	out.println(output);
	con.close(); 
    stmt.close(); 
}
catch(SQLException sqle){
 	JSONObject json = new JSONObject();
	json.put("msg", "failed");
	json.put("status", sqle);
	String output = json.toString();
	out.println(output);
}

%>
