<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@page import="java.security.*" %>
<%@include file="db.config.jsp"%>
<%@page import="java.util.Date" %>



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
String password = (encrypt(request.getParameter("password"))).toString();
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
		//gen token
	 	Date date = new Date();
	 	String token = encrypt(account+date.toString());
	 	session.setAttribute( "TOKEN", token);		

	 	//update token in sql
	 	Class.forName("com.mysql.jdbc.Driver").newInstance();
	con = DriverManager.getConnection(DBDSN);
    stmt = con.createStatement();
    query = "UPDATE w10540.tbuser SET token='"+token+"' WHERE account='"+account+"';";
	
	stmt.executeUpdate(query);

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
