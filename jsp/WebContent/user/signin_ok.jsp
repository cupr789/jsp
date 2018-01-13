<%@page import="java.util.HashMap"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
/* String hobby = request.getParameter("hobby");
Map<String,String[]> paramMap = request.getParameterMap();
Iterator<String> it = paramMap.keySet().iterator();
while(it.hasNext()){
	String key = it.next();
	out.println("Key : "+key+"<br>");
	String[] value = paramMap.get(key);
	out.println("value : ");
	for(String v: value){
		out.print(v+",");
	}
	out.println("<br>");
}
if(paramMap.size()==0){
	out.println("아무고토없삼");
} */

Gson gs = new Gson();
Map<String,String[]> map =  gs.fromJson(request.getParameter("param"), HashMap.class);
out.println(gs.toJson(map));



%>

