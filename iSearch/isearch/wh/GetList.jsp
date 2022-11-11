<%@page import="java.io.File"%><%@page import="java.util.ArrayList"%><%@page import="java.util.Scanner"%><%  String uName=request.getRemoteUser(),priv=request.getParameter("priva");
    File file=null; 
    if(priv.equals("pri")){
        file = new File("C:\\iSWF\\"+uName+"\\fair\\");
	}else{
        file = new File("C:\\tomcat\\apache-tomcat-8.0.26-windows-x64\\apache-tomcat-8.0.26\\webapps\\ROOT\\wh\\Public\\");
    }
    String[] df=file.list();
	StringBuilder data=null;
for (String path:df){
	if(data==null){
		data=new StringBuilder();
		data.append(path);
	}else{
		data.append(",").append(path);
	}
}
   out.write(data.toString());
%>