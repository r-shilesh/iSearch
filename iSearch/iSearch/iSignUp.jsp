<!DOCTYPE html>
<html>
<style>
	#al{
		vertical-align: middle;
		width: 300px;
		height: 350px;
		border-radius: 20px;
		background-color: black;
		position: absolute;
		top:150px;
		left: 37.5%;
		box-shadow: 10px 10px 14px #888888;
	}
	h1{
		color:white;
		width: 230px;
		position: absolute;

	}
	#al1{
		position: absolute;
		top:15px;
		left: 30px;
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
		top: 100px;
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
		top: 148px;
	}
	#pas2{
		font-size: 16px;
		border-radius: 5px;
		border:0px;
		outline: none;
		padding-right: 10px;
		height: 30px;
		padding-left: 10px;
		position: absolute;
		left: 0px;
		top: 195px;
	}
	#sub{
		outline: none;
		border-radius: 5px;
		width: 100px;
		height: 30px;
		border:0px;
		background-color: #D0D0D0;
		position: absolute;
		top: 260px;
		left: 70px;
	}
	#usr{
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
	*{
		font-family: "Comic Sans", cursive;
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
	<title>Sign Up</title>
	<link rel="icon" href="ups.png">
</head>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
 <script>
 	$(document).ready(function(){
 		$("#usr").hide();
 		$("#sub").click(function(){
 			var che=$("#use").val(),pass=$("#pas").val(),pass2=$("#pas2").val();
 			var k=0,l=0;
            var ti=100;
            var pos1=25;
            var pos2=-25;
            var fi=0;
 			if (che=='') {
	        	$("#use").animate({position:'absolute',left:pos1},ti);
    	    	$("#use").animate({position:'absolute',left:pos2},ti);
	        	$("#use").animate({position:'absolute',left:pos1},ti);
    	    	$("#use").animate({position:'absolute',left:pos2},ti);
	        	$("#use").animate({position:'absolute',left:pos1},ti);
    	    	$("#use").animate({position:'absolute',left:pos2},ti);
    	    	$("#use").animate({position:'absolute',left:fi},ti);
    	    	k++;
 			};
 			if(pass=='') {
 				k++;
 				l++;
				$("#pas").animate({position:'absolute',left:pos1},ti);
    	    	$("#pas").animate({position:'absolute',left:pos2},ti);
	        	$("#pas").animate({position:'absolute',left:pos1},ti);
    	    	$("#pas").animate({position:'absolute',left:pos2},ti);
	        	$("#pas").animate({position:'absolute',left:pos1},ti);
    	    	$("#pas").animate({position:'absolute',left:pos2},ti);
    	    	$("#pas").animate({position:'absolute',left:fi},ti);
 			};
 			if(pass2=='') {
 				k++;
 				l++;
				$("#pas2").animate({position:'absolute',left:pos1},ti);
    	    	$("#pas2").animate({position:'absolute',left:pos2},ti);
	        	$("#pas2").animate({position:'absolute',left:pos1},ti);
    	    	$("#pas2").animate({position:'absolute',left:pos2},ti);
	        	$("#pas2").animate({position:'absolute',left:pos1},ti);
    	    	$("#pas2").animate({position:'absolute',left:pos2},ti);
    	    	$("#pas2").animate({position:'absolute',left:fi},ti);
 			};
 			if ((pass!=pass2)&&(l==0)) {
        		$("#pas").animate({position:'absolute',left:pos1},ti);
        		$("#pas2").animate({position:'absolute',left:pos1},ti);
        		$("#pas").animate({position:'absolute',left:pos2},ti);
        		$("#pas2").animate({position:'absolute',left:pos2},ti);
        		$("#pas").animate({position:'absolute',left:pos1},ti);
        		$("#pas2").animate({position:'absolute',left:pos1},ti);
        		$("#pas").animate({position:'absolute',left:pos2},ti);
        		$("#pas2").animate({position:'absolute',left:pos2},ti);
        		$("#pas").animate({position:'absolute',left:pos1},ti);
        		$("#pas2").animate({position:'absolute',left:pos1},ti);
        		$("#pas").animate({position:'absolute',left:pos2},ti);
        		$("#pas2").animate({position:'absolute',left:pos2},ti);
        		$("#pas").animate({position:'absolute',left:fi},ti);
        		$("#pas2").animate({position:'absolute',left:fi},ti);
 				$("#pas").val("");
 				$("#pas2").val("");
 			} else {
 				if (k==0) {
	 				$.post("Signup.jsp",{
 						use:che,
 						paswor:pass
 					},function(data,status){
 						if(data.indexOf("do")>-1){
 							alert("Account Created!\nPlease Log In again.");
 							window.location.href = "wh/iSearch.jsp";
	 					}else{
 							$("#usr").text("User Name is Already Used!");
 							$("#usr").slideDown(500);
        					setTimeout(myFunction,5000);
 						};
 					});
 					};
 				};
 		});
 	});
 </script>
<script>
function myFunction() {
    $("#usr").slideUp(500);
}
</script>
<body bgcolor ="#e6e6e6">
<div id="al">
<div id="al1">
<center>
	<div id="usr"></div>
	<h1>Sign Up</h1>
	<input id="use" onClick="this.select();" autocomplete="off" type="text" placeholder="User Name" autofocus><br><br>
	<input id="pas" onClick="this.select();" type="password" placeholder = "Password"><br><br>
	<input id="pas2" onClick="this.select();" type="password" placeholder = "Re-Enter Password"><br><br><br>
	<button id="sub"  type="button"><b>Sign Up</b></button>
</center>
</div>
</div>
<button id="signup" type="button" onclick="window.location.href='../iSignIn.jsp'"><b>Sign In</b></button>
</body>
</html>