<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%
String r=request.getParameter("fc"),t=request.getParameter("pname"),f=request.getParameter("file"),pp=request.getParameter("pp"),uName=request.getRemoteUser();
File filer;
String[] s=t.split(" ");
boolean check=true;
int h=0;
for(int i=0;i<s.length;i++){
	if(i==0){
		t=s[i];
	}else{
		t+="-"+s[i];
	}
}
String pat="";
if (t.contains(".html")||t.contains(".css")) {
	pat=t;
}else{
	pat=t+"."+f;
}
if(pp.equalsIgnoreCase("pr")){
filer = new File("C:/iSWF/"+uName+"/fair/");
if(!filer.exists()){
   filer.mkdirs();
   check=false;
}
}else{
    filer=new File("C:/tomcat/apache-tomcat-8.0.26-windows-x64/apache-tomcat-8.0.26/webapps/ROOT/wh/public/");
}
if(check){
String[] fi=filer.list();
for(String fl:fi){
	if(fl.equalsIgnoreCase(pat)){
		h++;
		break;
	}
}
}
if(h==0){
FileWriter writer;
File file,filed;
filed = new File("C:/iSWF/"+uName+"/draft/"+pat);
if(pp.equalsIgnoreCase("pr")){
    file = new File("C:/iSWF/"+uName+"/fair/"+pat);
    writer = new FileWriter("C:/iSWF/"+uName+"/fair/"+pat);
}else{
    file = new File("C:/tomcat/apache-tomcat-8.0.26-windows-x64/apache-tomcat-8.0.26/webapps/ROOT/wh/public/"+pat);
    writer = new FileWriter("C:/tomcat/apache-tomcat-8.0.26-windows-x64/apache-tomcat-8.0.26/webapps/ROOT/wh/public/"+pat);
}
writer.write(r);
writer.flush();
writer.close();
boolean slll=filed.delete();
out.write("Created!");
}else{
	out.write("Sorry This Name has Been Already Used!\nPlease Change the Name of the Website.");
}
%>

