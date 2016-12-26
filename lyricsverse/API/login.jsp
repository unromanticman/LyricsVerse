<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@include file="db.config.jsp"%>
<%
request.setCharacterEncoding("UTF-8");

Connection con = null;
Statement stmt = null; 
String query = ""; 

String account = "1";//request.getParameter("account");
String password = "3";request.getParameter("password");

try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection(DBDSN);
    stmt = con.createStatement();
    query = "select account,password from w10540.tbuser WHERE account='"+account+"' and password ='"+password+"'";
   
    ResultSet rs = stmt.executeQuery(query); 

    int rowcount = 0;
    
    if (rs.last()) {
	  rowcount = rs.getRow();
	  rs.beforeFirst(); 
	}

	if(rowcount != 0 ){
		JSONObject json = new JSONObject();
		json.put("status", "success");
		json.put("msg", "login success");
		String output = json.toString();
		out.println(output);		
	} 
	else{
		JSONObject json = new JSONObject();
		json.put("status", "failed");
		json.put("msg", "login error");
		String output = json.toString();
		out.println(output);
	}
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
