<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Scanner"%>
<html>
<style>
	*{
		font-family: "Comic Sans", cursive;
	}
	div{
		padding-left: 15px;
		padding-top: 15px;
		padding-bottom: 15px;
		padding-right: 15px;
		border-radius: 5px;
		background-color: #C8C8C8 ;
		
	}
	A:link { 
		COLOR: grey; 
		TEXT-DECORATION: none;
		font-weight: lighter;
		text-decoration: underline; 
	}
	A:visited { 
        COLOR: #696969; 
		TEXT-DECORATION: none;
		font-weight: lighter;
	}
	A:active { 
        COLOR: #696969;
		TEXT-DECORATION: none; 
	}
	A:hover { COLOR: #585858;
		TEXT-DECORATION: none; 
		font-weight: lighter ;
	}
	input[type=text]{
		padding-left: 20px;
		padding-right: 50px;
		border: 0px;
		border-radius:100px;
 	   	width: 556px;
 	   	height: 45px;
 	   	position: absolute;
 	  	left: 120px;
 	  	font-size:18px;
	}
	button[type=submit] {
		border-radius: 50px; 
		border: 0px;
		height: 45px;
		color: white;
		background-color: white;
		position: absolute;
		left:630px;
	}
	::-moz-selection {
	    color: none;
	    background: #87CEFA;
	}
	::selection {
		color: none;
	    background: #87CEFA;
	}
	body::-webkit-scrollbar {
	    width: 1em;
	}
	body::-webkit-scrollbar-track {
	    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	    border-radius: 100px;
	}
	body::-webkit-scrollbar-thumb {
	    border-radius: 100px;
	    background-color: grey;
	}
	input:focus {
    	outline: none;
    	box-shadow: 15px 15px 20px #888888;
	}
	#se{
		background-color: black ;
		position: absolute;
		top: 20px;
		height: 1px;
	}
	#al{
		color: white;
		font-size: 20px;
		background-color: black ;
		height: 60px;
        width: 97%;
	}
	#button2:hover{
		box-shadow: 5px 5px 10px #888888;
	  	border: 1px solid;
		color: black;
		background-color: none;
		border-color: #B0B0B0;
	}
	button[type=button]{
		border-radius:5px; 
		border: 0px;
		height: 40px;
		background-color: #F0F0F0 ;
	}
	#dp_swf_engine {
 		display:none;
	}
	#button2{
		position: absolute;
		width: 135px;
		top: 18px;
		right:20px;
		color: #686868;
	}
	#button4:hover{
 	   	border: 0px solid;
		box-shadow: 4px 4px 8px #888888;
		border: 1px solid;
		color: black;
		background-color: none;
		border-color: #B0B0B0;
	}
	#cr{
		background-color: black;
		position: absolute;
		width: 135px;
		height: 47px;
		top: 10px;
		right:170px;
		color: #686868;
	}
	#button4{
		position: absolute;
		width: 100px;
		border:1px solid;
		border-color: grey;
		top: 28px;
		right:65px;
		color: #686868;
	}
	#bu{
		position: absolute;
		width: 135px;
		height: 40px;
		border-radius: 5px;
		background-color: #F0F0F0; 
		border : 1px solid;
		border-color: grey;
		top: 28px;
		right:350px;
		color: #686868;
		outline: none;
	}
	#bu:hover{
		box-shadow: 5px 5px 10px #888888;
	  	border: 1px solid;
		color: black;
		background-color: none;
		border-color: #B0B0B0;
	}
	#clo{
		width: 10px;
		border-radius: 10px;
		position: absolute;
		top: 37px;
		right: 360px;
	}
	#sea:hover{
		cursor: pointer;
	}
    input[type=radio]:focus {
    	outline: none;
    	box-shadow: 0px 0px 0px #888888;
    }
    #ppp:hover{
        
		box-shadow: 5px 5px 10px #888888;
	  	border: 1px solid;
		color: black;
		background-color: none;
		border-color: #B0B0B0;
    }
    #ppp{
        border-radius: 5px;
		background-color: #F0F0F0; 
		border : 1px solid;
		border-color: grey;
		color: #686868;
        width: 120px;
        position: absolute;
        top: 149px;
        right: 25;
        color: black;
    }
    #ll{
        width: 97%;
    }
</style>
<head>
	<title>iSearch</title>
	<link rel="icon" href="sicon.png">
</head>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <%
String uName=request.getRemoteUser();
File file = new File("C:/iSWF/"+uName+"/fair/");
StringBuilder data=null;
String[] df=file.list();
for (String path:df){
	if(data==null){
		data=new StringBuilder();
		data.append("\"").append(path).append("\"");
	}else{
		data.append(",").append("\"").append(path).append("\"");
	}
}
%>
	<script>
	$(function() {
    var availableTags = [
      <%=data%>
    ];
    $( "#pas" ).autocomplete({
      source: availableTags
    });
  });

  	</script>
<%String a=request.getParameter("pas"),co=request.getParameter("color");
if (co.equals("wh")) {%>
	<script>
		$(document).ready(function(){
			$("body").css("background-color","#e6e6e6");
			$("#al").css("background-color","#b3b3b3");
    		$("#ll").css("background-color","#262626");
	    	$("ul").css("color","white");
    		$("#se").css("color","#1a1a1a");
    		$("#se").css("background-color","#b3b3b3");
    		$("#cr").css("background-color","#b3b3b3");
  		});
  	</script>
<%}
%>

  	<script>
  		$(document).ready(function(){
  			var div = $("#bu"),but= $("#set"),cl=$("#clo"),u=$("#ul");
  			cl.hide();
  			u.hide();
  			$("#bu").click(function(){   
		        cl.fadeIn(2000);
		        div.animate({height:'140px', opacity: '0.2'}, "slow");
        		div.animate({width:'300px', opacity: '0.4'}, "slow");
    		    div.animate({opacity: '1',backgroundColor:'white',borderRadius:'15px'}, "slow");
				but.fadeOut(100);
				u.fadeIn(3000);
    		});
  			$("#clo").click(function(){   
		        u.fadeOut(800);
		        cl.fadeOut(2000);
		        div.animate({borderRadius:'5px'}, "slow");
		        div.animate({borderRadius:'5px',width:'135px', opacity: '0.4'}, "slow");
        		div.animate({height:'40px', opacity: '0.2'}, "slow");
    		    div.animate({opacity: '1',backgroundColor:'#F0F0F0'}, "slow");
				but.fadeIn(3000);
			});
  			$("#whi").click(function(){
		    	$("body").animate({backgroundColor:"#e6e6e6"},"slow");
		    	$("#al"). animate({backgroundColor:"#b3b3b3"},"slow");
		    	$("#ll"). animate({backgroundColor:"#262626"},"slow");
		    	$("ul").animate({color:"white"},"slow");
		    	$("#se").animate({color:"#1a1a1a",backgroundColor:"#b3b3b3"},"slow");
		    	$("#cr"). animate({backgroundColor:"#b3b3b3"},"slow");
		    });
  			$("#bla").click(function(){   
		    	$("body").animate({backgroundColor:"#282828"},"slow");
		    	$("#se").animate({color:"#C8C8C8",backgroundColor:"black"},"slow");
		    	$("#ll").animate({backgroundColor:"#C8C8C8"},"slow");
		    	$("#al").animate({backgroundColor:"black"},"slow");
		    	$("ul").animate({color:"black"},"slow");
		    	$("#cr").animate({backgroundColor:"black"},"slow");
		    });
            $("#pub").click(function(){
            var f="pub";
            $.post("GetList.jsp",
            {
                    priva:f
            },
        function(data, status){
            var availableTags = data.split(",");
                $( "#pas" ).autocomplete({
                source: availableTags
                });
        });
        });
        $("#pri").click(function(){   
        var f="pri";
            $.post("GetList.jsp",
        {
            priva:f
        },
        function(data, status){
            var availableTags = data.split(",");
                $( "#pas" ).autocomplete({
                source: availableTags
    	   });
        });
        });
  		});
  	</script>
<body bgcolor="#282828">
<div id="al">
<div id="se">iSearch</div>
<form action="iGo.jsp" action="POST">

<div id="ppp"><b>Privacy : </b>
<div id="uls">
<input id="pri" value="pri" checked type="radio" name="ppp">Private<br>
<input id="pub" value="pub" type="radio" name="ppp">Public
    </div>
</div>

<button id="bu" type="button">
<b>Themes</b>
<div id="ul">
<b>
<input id="whi" value="wh" checked type="radio" name="color">Classic White<br>
<input id="bla" value="bl" type="radio" name="color">Professional Black
</b>
</div>
</button>
<img src="close.png" id="clo">
<input autofocus id="pas"  onClick="this.select();" placeholder="Search for websites created by you!" type="text" name="pas" value=<%=a%>>
<button type="Submit"><b><img id="sea" src="sea.png" border="0" height="30" width="30"></b></button>
</form>
<div id="cr"><button id="button2" type="button" onclick="window.location.href='iCreate.jsp'"><b>Create Website</b></button></div>
</div>
<button id="button4" type="button" onclick="window.location.href='/logout.jsp'"><b>Log Out</b></button>
<br><br>
<%
   File fileLi=null;
   String ppp=request.getParameter("ppp");
   if(ppp.equals("pub")){
        fileLi = new File("C:\\tomcat\\apache-tomcat-8.0.26-windows-x64\\apache-tomcat-8.0.26\\webapps\\ROOT\\wh\\Public\\");
   %>
    <script>
        $(document).ready(function(){
            $("#pub").prop("checked", true);
        });
    </script>
    <%
   }else{
        fileLi = new File("C:\\iSWF\\"+uName+"\\fair\\");
   }
   String[] sc=fileLi.list(),c=fileLi.list();
String temp=null;
int p=0;
for (String fl:c){
	c[p]=fl.toLowerCase();
	p++;
}
%><div id="ll"><ul>
<h1>Search Results :</h1>
<%
   int dg=0;
for (int i=0;i<sc.length;i++) {
	a=a.toLowerCase();
	if(c[i].contains(a)){
	dg++;
	String f;
    if(ppp.equals("pub")){
        f="iShow.jsp?fname="+sc[i]+"&ppp=pub";
    }else{
        f="iShow.jsp?fname="+sc[i]+"&ppp=pri";
	}%>
	<li><a href=<%=f%>><b> <%=sc[i]%></b></a></li>
	<%}
}
if(dg==0){%>
	<h2>Sorry, no one has created this website .<br>
	But you can create this website!
	</h2>
<%}
%>
</ul>
</div>
</body>
</html>
