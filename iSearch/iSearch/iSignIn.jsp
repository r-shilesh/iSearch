<!DOCTYPE html>
<html>
<style>
	#al{
		vertical-align: middle;
		width: 300px;
		height: 300px;
		border-radius: 20px;
		background-color: black;
		position: absolute;
		top:150px;
		left: 37.5%;
		box-shadow: 10px 10px 14px #888888;
	}
	h1{
		color:white;
	}
	#al1{
		position: relative;
		top:15px;
		left: 10%;
	}
	#use{
		font-size: 16px;
		padding-right: 10px;
		height: 30px;
		padding-left: 10px;
		outline: none;
		border-radius: 5px;
		border:0px;
        position: absolute;
        left: 0px;
	}
	#pas{
		font-size: 16px;
		border-radius: 5px;
		border:0px;
		outline: none;
		padding-right: 10px;
		height: 30px;
		padding-left: 10px;
        position: absolute;
        left: 0px;
	}
	#sub{
		border-radius: 5px;
		width: 100px;
		height: 30px;
		border:0px;
		background-color: #D0D0D0;
		outline: none;
        position: relative;
        left: 24%;
	}
	*{
		font-family: "Comic Sans", cursive;
	}
	#usr{
		color: red;
		text-align: center;
		padding-left: 10px;
		padding-right: 10px;
		color: white;
		border-radius: 5px;
		background-color: grey;
	}
	::-moz-selection {
	    color: black;
	    background: #87CEFA;
	}
	::selection {
   		color: black;
	    background: #87CEFA;
	}
	#signup{
		border-radius:5px; 
		border: 0px;
		height: 40px;
		background-color: #F0F0F0 ;
		position: absolute;
		width: 100px;
		border:1px solid;
		border-color: grey;
		top: 10px;
		right:20px;
		color: #686868;
	}
	#signup:hover{
 	   	border: 0px solid;
		box-shadow: 4px 4px 8px #888888;
		border: 1px solid;
		color: black;
		background-color: none;
		border-color: #B0B0B0;
	}
    h1{
        position: absolute;
        left: 20%;
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
</style>
<head>
	<title>Sign In</title>
	<link rel="icon" href="/log.png">
</head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <%String fail=request.getParameter("retry");%>
<script>
 	$(document).ready(function(){
        var ti=100;
        var pos1=57.5;
        var pos2=17.5;
        var fi=33;
 		if (<%=fail%>!=null) {
        	$("#al1").animate({position:'absolute',left:pos1},ti);
        	$("#al1").animate({position:'absolute',left:pos2},ti);
        	$("#al1").animate({position:'absolute',left:pos1},ti);
        	$("#al1").animate({position:'absolute',left:pos2},ti);
        	$("#al1").animate({position:'absolute',left:pos1},ti);
        	$("#al1").animate({position:'absolute',left:pos2},ti);
        	$("#al1").animate({position:'absolute',left:fi},ti);
		};
 	});
</script>
<body bgcolor ="#e6e6e6">
<div id="al">
<div id="al1">
<div id="mo">
	
    <h1>Sign In</h1>
    <br><br><br><br>
	<form method="POST" action="j_security_check">
	<input onClick="this.select();" id="use" type="text" name="j_username" placeholder="User Name" autofocus><br><br>
	<input onClick="this.select();" id="pas" type="password" placeholder = "Password" name="j_password"><br><br>
	<button id="sub" type="Submit"><b>Log In</b></button>
	</form>
	
</div>
</div>
</div>
<button id="signup" type="button" onclick="window.location.href='../iSignUp.jsp'"><b>Sign Up</b></button>
</body>
</html>