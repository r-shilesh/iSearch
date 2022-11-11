<%@page import="java.io.File"%><%@page import="java.util.Scanner"%><%
   String fname=request.getParameter("fname"),uName=request.getRemoteUser();
   File file = new File("C:/iSWF/"+uName+"/draft/"+fname);
   Scanner inp = new Scanner(file);
   while (inp.hasNextLine()) {
        %><%=inp.nextLine()%>
<%
   }
   inp.close();
%>