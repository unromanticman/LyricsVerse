<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@page import="java.security.*" %>
<%@include file="db.config.jsp"%>
<%@page import="java.util.Date" %>
<%

session.invalidate();

JSONObject json = new JSONObject();
	json.put("msg", "success");
	json.put("status", "logout success");
	String output = json.toString();
	out.println(output);

%>
