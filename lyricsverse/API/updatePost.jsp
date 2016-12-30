<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@include file="db.config.jsp"%>
<%

request.setCharacterEncoding("UTF-8");


Connection con = null;
Statement stmt = null; 
String query = ""; 
PreparedStatement prepStmt = null;

String uploadUser = session.getAttribute("UID").toString();
String title = request.getParameter("lyricsname");
String info = request.getParameter("info");
String verse = request.getParameter("lyrics");
String link = request.getParameter("link");
String screen = "";
String postid = request.getParameter("id");

try{
   String[] split = link.split("v=");
   screen = split[1];
}
catch(Exception e){
  
}

try{

    Class.forName("com.mysql.jdbc.Driver").newInstance();
	con = DriverManager.getConnection(DBDSN);
    stmt = con.createStatement();

   	/* query = "INSERT INTO w10540.`tblyrics` (tblyrics.`title`,tblyrics.`verse`,tblyrics.`info`,tblyrics.`uploadUser`,tblyrics.`uploadDate`,tblyrics.link,tblyrics.screen)VALUES ('"+title+"','"+verse+"','"+info+"','"+uploadUser+"',NOW(),'"+link+"','"+screen+"')";
	*/

	query = "UPDATE w10540.`tblyrics` SET tblyrics.`title` = ? ,tblyrics.`verse` = ?,tblyrics.`info` = ?,tblyrics.link = ?,tblyrics.screen = ? WHERE tblyrics.`id` = ? and tblyrics.uploadUser = ? ;";
	
	prepStmt = con.prepareStatement(query);

	prepStmt.setString(1, title);
	prepStmt.setString(2, verse);
	prepStmt.setString(3, info);
	prepStmt.setString(4, link);
	prepStmt.setString(5, screen);
	prepStmt.setString(6, postid);
	prepStmt.setString(7, uploadUser);

	prepStmt.executeUpdate();

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
