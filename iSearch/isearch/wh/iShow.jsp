<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
    
<%
   String fname=request.getParameter("fname"),ppp=request.getParameter("ppp"),uName=request.getRemoteUser();
   File file=null;
   if(ppp.equals("pri")){
    file = new File("C:/iSWF/"+uName+"/fair/"+fname);
   }else{
    file = new File("C:/tomcat/apache-tomcat-8.0.26-windows-x64/apache-tomcat-8.0.26/webapps/ROOT/wh/public/"+fname);
   }
   Scanner inp = new Scanner(file);
   while (inp.hasNextLine()) {
        %><%=inp.nextLine()%><%
   }
%>