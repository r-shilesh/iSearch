<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%
String fc=request.getParameter("fc"),pname=request.getParameter("pname"),f=request.getParameter("file"),uName=request.getRemoteUser();
File filer = new File("C:/iSWF/"+uName+"/draft/");
boolean check=true;
if(!filer.exists()){
   filer.mkdirs();
   check=false;
}
int h=0;
String[] s=pname.split(" ");
for(int i=0;i<s.length;i++){
	if(i==0){
		pname=s[i];
	}else{
		pname+="-"+s[i];
	}
}

String pat="";
if (pname.contains(".html") || pname.contains(".css")) {
	pat=pname;
} else {
    pat=pname+"."+f;
}
File file = new File("C:/iSWF/"+uName+"/draft/"+pat);
FileWriter writer = new FileWriter("C:/iSWF/"+uName+"/draft/"+pat);
writer.write(fc);
writer.flush();
writer.close();
out.write("Draft Saved!");
%>
