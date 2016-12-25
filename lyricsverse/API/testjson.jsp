<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="org.json.JSONObject" %>
<%@page import="java.sql.*" %>
<%@include file="db.config.jsp"%>
<%

		JSONObject json = new JSONObject();
		json.put("msg", "failed");
		json.put("status", "user exist");
		String output = json.toString();

%>
