<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.apache.http.*" %>
<%@ page import="org.apache.http.client.methods.HttpGet" %>
<%@ page import="org.apache.http.impl.client.DefaultHttpClient" %>
<%@ page import="org.apache.http.util.EntityUtils" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

DefaultHttpClient httpclient = new DefaultHttpClient(); //http client that will execute service

HttpHost p = new HttpHost("weather.yahooapis.com", 80, "http");

HttpGet getWeather = new HttpGet("/forecastrss?p=48207&u=f");

HttpResponse resp = httpclient.execute(p, getWeather);

out.print(EntityUtils.toString(resp.getEntity()));


%>
</body>
</html>