<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@include file="db.config.jsp"%>
<%


Connection con = null;
Statement stmt = null; 
String query = ""; 

String account = "test";
String password = "password";
try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection(DBDSN);
    stmt = con.createStatement();
    query = "select account,password from w10540.tbuser WHERE account='"+account+"'";
    ResultSet rs = stmt.executeQuery(query); 

    int rowcount = 0;
    
    if (rs.last()) {
	  rowcount = rs.getRow();
	  rs.beforeFirst(); 
	}

	if(rowcount == 1 ){
		JSONObject json = new JSONObject();
		json.put("msg", "success");
		json.put("status", "login success");
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
