<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@include file="db.config.jsp"%>
<%
   request.setCharacterEncoding("UTF-8");


Connection con = null;
Statement stmt = null; 
String query = ""; 



String account = request.getParameter("account");
String password = request.getParameter("password");    
String name = request.getParameter("username");         
String gender = request.getParameter("gender");
String intro = request.getParameter("intro");
String tag = request.getParameter("tag");
String type = "0";

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
		json.put("msg", "failed");
		json.put("status", "user exist");
		String output = json.toString();
		out.println(output);
	    con.close(); 
        stmt.close(); 
       return;
	} 

}
catch(SQLException sqle){
 	JSONObject json = new JSONObject();
	json.put("msg", "failed");
	json.put("status", sqle);
	String output = json.toString();
	out.println(output);
}
//假如不存在

try{



    Class.forName("com.mysql.jdbc.Driver").newInstance();
	con = DriverManager.getConnection(DBDSN);
    stmt = con.createStatement();
    query = "INSERT INTO w10540.`tbuser` (tbuser.`account`,tbuser.`gender`,tbuser.`password`,tbuser.`tag`,tbuser.`type`,tbuser.`intro` ,tbuser.`name` )VALUES ('"+account+"','"+gender+"','"+password+"','"+tag+"','"+type+"','"+intro+"','"+name+"')";
	
	stmt.executeUpdate(query);

	JSONObject json = new JSONObject();
	json.put("msg", "success");
	json.put("status", "success");
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
