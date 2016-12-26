<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@page import="java.security.*" %>
<%@include file="db.config.jsp"%>
<%!

 public static String encrypt(String plainText) throws Exception {
   	MessageDigest mdAlgorithm = MessageDigest.getInstance("SHA-1");
        mdAlgorithm.update(plainText.getBytes());
        byte[] digest = mdAlgorithm.digest();
        StringBuffer hexString = new StringBuffer();
        for (int i = 0; i < digest.length; i++) {
            plainText = Integer.toHexString(0xFF & digest[i]);

            if (plainText.length() < 2) {
                plainText = "0" + plainText;
            }
            hexString.append(plainText);
        }
        return hexString.toString();
  }

%>
<%
   request.setCharacterEncoding("UTF-8");


Connection con = null;
Statement stmt = null; 
String query = ""; 

	


String account = request.getParameter("account");
String password = encrypt(request.getParameter("password")).toString();    
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
