<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@include file="db.config.jsp"%>
<%


Connection con = null;
Statement stmt = null; 
String query = ""; 

String account = "1";
String gender ="";
String intro ="";
String tag ="";
String type ="";

try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection(DBDSN);
    stmt = con.createStatement();
    query = "select * from w10540.tbuser WHERE account ='"+account+"'";
    ResultSet rs = stmt.executeQuery(query); 

    if (rs.next()) { 
        account = rs.getString("account");
        gender = rs.getString("gender"); 
        intro = rs.getString("intro");
        tag = rs.getString("tag");
        type = rs.getString("type");
	    
	    JSONObject json = new JSONObject();
		json.put("msg", "success");
		json.put("status", "getUserInfo success");
		json.put("account",account);
		json.put("gender",gender);
		json.put("intro",intro);
		json.put("tag",tag);
		json.put("type",type);

		String output = json.toString();
		out.println(output);		
	}


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
