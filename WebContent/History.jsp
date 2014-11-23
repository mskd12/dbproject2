<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<table>
<%String S=request.getAttribute("MyHistory").toString(); 
String sid=request.getAttribute("MySID").toString();
String[] SingleLine=S.split("//");
for(String line: SingleLine){
	String[] parts=line.split("@");
	if(parts.length>3){
	%> 
	<tr> 
		 <td> <%out.println(parts[0]);%> </td>
		 <td> <%out.println(parts[1]);%> </td>
		 <td> <%out.println(parts[2]);%> </td>
		 <td> <%out.println(parts[3]);%> </td>
	</tr> 
	<% 
}
}
%>
</table>
</body>
</html>