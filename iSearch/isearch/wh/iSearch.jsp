<!DOCTYPE html>
<html>
<style>
	#dp_swf_engine {
 		display:none;
	}
	*{
		font-family: "Comic Sans", cursive;
	}
	input:focus {
    	outline: none;
    	box-shadow: 15px 15px 20px #888888;
	}
    input[type=radio]:focus {
    	outline: none;
    	box-shadow: 0px 0px 0px #888888;
    }
	button:focus {
    	outline: none;
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
	#button2:hover{
		box-shadow: 4px 4px 8px #888888;
 	   	border: 0px solid;
		color: black;
		background-color: none;
		border-color: #B0B0B0;
	}
	button[type=submit] {
		border-radius: 50px; 
		border: 0px;
		height: 45px;
		color: white;
		background-color: white;
		position: absolute;
		top: 55.3%;
		left: 73%;
	}
	input[type=text]{
		padding-left: 20px;
		padding-right: 65px;
		border: 0px;
		border-radius:100px;
 	   	width: 590px;
 	   	height: 45px;
        box-shadow: 15px 15px 20px #888888;
 	   	position: absolute;
 	   	top: 55%;
        left: 27.5%;
	}
    
	#main{
		color: #1a1a1a;
		font-size: 500%;
		width: 560px;
        position: absolute;
        left: 30.5%;
        top:0%;
	}
	#er{
		position: absolute;
		top: 250px;
		left: 890px;
		width: 100px;
	}
	button[type=button]{
		border-radius:5px; 
		border: 0px;
		height: 40px;
		background-color: #F0F0F0 ;
	}
	#button2{
		position: absolute;
		width: 135px;
		border:1px solid;
		border-color: grey;
		top: 10px;
		right:135px;
		color: #686868;
	}
	#button4{
		position: absolute;
		width: 100px;
		border:1px solid;
		border-color: grey;
		top: 10px;
		right:20px;
		color: #686868;
	}
	::-moz-selection {
	    color: none;
	    background: #87CEFA;
	}
	::selection {
		color: none;
	    background: #87CEFA;
	}
	#custom{
		width: 50px;
		background-color: grey;
	}
	#bu{
		position: absolute;
		width: 135px;
		height: 40px;
		border-radius: 5px;
		background-color: #F0F0F0; 
		border : 1px solid;
		border-color: grey;
		top: 10px;
		right:285px;
		color: #686868;
	}
	#bu:hover{
		box-shadow: 4px 4px 8px #888888;
		border: 1px solid;
		color: black;
		background-color: none;
		border-color: #B0B0B0;
	}
	#button4:hover{
 	   	border: 0px solid;
		box-shadow: 4px 4px 8px #888888;
		border: 1px solid;
		color: black;
		background-color: none;
		border-color: #B0B0B0;
	}
	#sea:hover{
		cursor: pointer;
	}
	#clo{
		width: 10px;
		border-radius: 10px;
		position: absolute;
		top: 20px;
		right: 295px;
	}
	#mar{

		width: 150px;
		border: 0px;
		border-radius: 5px;
		background-color: grey;
		position: absolute;
		left: 85%;
		top: 90%;
	}
    
    #ppp{
        border-radius: 5px;
		background-color: #F0F0F0; 
		border : 1px solid;
		border-color: grey;
		color: #686868;
        width: 120px;
        position: absolute;
        top: 10px;
        left: 10px;
        color: black;
		padding-bottom: 15px;
		padding-right: 15px;
        background-color: #C8C8C8 ;
		padding-left: 15px;
		padding-top: 15px;
    }
</style>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Scanner"%>
<head>
	<title>iSearch</title>
	<link rel="icon" href="/wh/sicon.png">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <%
    String uName=request.getRemoteUser();
  	File file = new File("C:/iSWF/"+uName+"/fair/");
	String[] df=file.list();
	StringBuilder data=null;
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
		        u.fadeOut(100);
		        cl.fadeOut(2000);
		        div.animate({borderRadius:'5px'}, "slow");
		        div.animate({borderRadius:'5px',width:'135px', opacity: '0.4'}, "slow");
        		div.animate({height:'40px', opacity: '0.2'}, "slow");
    		    div.animate({opacity: '1',backgroundColor:'#F0F0F0'}, "slow");
				but.fadeIn(3000);
			});
  			$("#whi").click(function(){   
		    	$("body").animate({backgroundColor:'#e6e6e6'},"slow");
		    	$("#main").animate({color:'#1a1a1a'},"slow");
		    });
  			$("#bla").click(function(){   
		    	$("body").animate({backgroundColor:"#282828"},"slow");
		    	$("#main").animate({color:"#C8C8C8"},"slow");
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
</head>

<body bgcolor="#e6e6e6">
<div id="main"><h1>iSearch</h1></div>

<form action="/wh/iGo.jsp" action="POST">
<button id="bu" type="button">
<div id="set"><b>Themes</b></div>
<div id="ul">
<b>
<input id="whi" value="wh" type="radio" checked name="color">Classic White<br>
<input id="bla" value="bl" type="radio" name="color">Professional Black
</b>
</div>
</button>
<div id="ppp">
<div id="sert"><b>Privacy : </b></div>
<div id="ulg">
<b>
<input id="pri" value="pri" checked type="radio" name="ppp">Private<br>
<input id="pub" value="pub" type="radio" name="ppp">Public
</b>
</div>
</div>
<img src="/wh/close.png" id="clo">

<input type="text" id="pas" autofocus spellcheck="false"  onClick="this.select();" placeholder="Search for websites created by you!" name="pas" style="font-size:18px;" ><br>
<button type="submit"><b><img id="sea" src="/wh/sea.png" border="0" height="30" width="30"></b>
</button>
</form>
<button id="button4" type="button" onclick="window.location.href='/logout.jsp'"><b>Log Out</b></button>

	<button id="button2" type="button" onclick="window.location.href='/wh/iCreate.jsp'"><b>Create Website</b></button>
    
</body>
</html>