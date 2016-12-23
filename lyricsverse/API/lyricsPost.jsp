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

try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	con = DriverManager.getConnection(DBDSN);
    stmt = con.createStatement();
    query = "INSERT INTO w10540.`tblyrics` (tblyrics.`title`,tblyrics.`verse`,tblyrics.`info`,tblyrics.`uploadUser`,tblyrics.`uploadDate`)VALUES ('"+title+"','"+verse+"','"+info+"','"+uploadUser+"',NOW())";
	
	stmt.executeUpdate(query);

	JSONObject json = new JSONObject();
	json.put("msg", "success");
	json.put("status", "post verse success");
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
