<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@include file="db.config.jsp"%>
<%

 request.setCharacterEncoding("UTF-8");


Connection con = null;
Statement stmt = null; 
String query = ""; 

String uploadUser = session.getAttribute("UID").toString();
String title = request.getParameter("lyricsname");
String info = request.getParameter("info");
String verse = request.getParameter("lyrics");
String link = request.getParameter("link");
try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	con = DriverManager.getConnection(DBDSN);
    stmt = con.createStatement();
    query = "INSERT INTO w10540.`tblyrics` (tblyrics.`title`,tblyrics.`verse`,tblyrics.`info`,tblyrics.`uploadUser`,tblyrics.`uploadDate`,tblyrics.link)VALUES ('"+title+"','"+verse+"','"+info+"','"+uploadUser+"',NOW(),'"+link+"')";
	
	stmt.executeUpdate(query);

	JSONObject json = new JSONObject();
	
	json.put("status", "success");
	json.put("msg", "post verse success");
	String output = json.toString();
	out.println(output);
	con.close(); 
    stmt.close(); 
}
catch(SQLException sqle){
 	JSONObject json = new JSONObject();
	json.put("status", "failed");
	json.put("msg", sqle);
	String output = json.toString();
	out.println(output);
}

%>
