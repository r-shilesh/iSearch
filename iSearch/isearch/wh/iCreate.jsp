<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
	<title>iCreate</title>
	<link rel="icon" href="	icon.png">
</head>
<style>
	*{
		font-family: "Comic Sans", cursive;
	}
	body::-webkit-scrollbar {
	    width: 1em;
	}
	body::-webkit-scrollbar-track {
	    border-radius: 100px;
	    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	}
	body::-webkit-scrollbar-thumb {
	    border-radius: 100px;
	    background-color: grey;
	}
	textarea::-webkit-scrollbar {
	    width: 1em;
	}
	textarea::-webkit-scrollbar-track {
	    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	    border-radius: 100px;
	}
	textarea::-webkit-scrollbar-thumb {
	    border-radius: 100px;
	    background-color: #bfbfbf;
	}
	::-moz-selection {
	    color: none;
	    background: #87CEFA;
	}
	::selection {
   		color: none;
	    background: #87CEFA;
	}
	#save:focus{
		outline: none;
	}
	#save{
		width: 110px;
		height: 40px;
		background-color: grey;
		position: absolute;
		top: 5px;
		left: 73px;
		border-radius: 5px;
		border:1px solid;
		color: white;	
	}
	#cr{
		width: 120px;
		height: 40px;
		position: absolute;
		top: 5px;
		left: 205px;
		border-radius: 5px;
		background-color: grey;
		border:1px solid;
		color: white;
	}
	#bar{
		width: 97%;
		height: 55px;
		border-radius: 5px;
		border:none;
		border-color: black;
		background-color:black;  
		position: absolute;
		top: 2px;
		left: 15px;
	}
	input[type="text"]{
		color: white;
		background-color: black;
		border:none;
		border-color: black;
	}
	textarea{
        resize: none;
		border:none;
		border-color: black;
		color: white;
		background-color: black;
	}
	input:focus {
		border:none;
    	outline: none;
    	box-shadow: 4px 4px 8px #888888;
	}
	textarea:focus {
		border:none;
    	outline: none;
    	box-shadow: 4px 4px 8px #888888;
	}
	.ho:hover{
    	outline: none;
		border:1px solid;
    	box-shadow: 4px 4px 8px black;
	}
	#cr:focus{
		outline: none;
	}
	#dp_swf_engine {
 		display:none;
	}
	#rad{
        padding-left: 10px;
		color: white;
		background-color: black;
		border-radius: 10px;
		width: 150px;
        position: absolute;
        top: 78%;
        left: 200px;
	}
	#privacy{
        padding-left: 10px;
		color: white;
		background-color: black;
		border-radius: 10px;
		width: 150px;
        position: absolute;
        top: 78%; 
	}
	#sl{
		width: 97%;
		text-align: center;
		padding-left: 10px;
		padding-right: 10px;
		color: white;
		border-radius: 5px;
		background-color: grey;
		position: absolute;
		top: 70px;
		left: 1%;
	}
    
	#dra{
		padding-left: 10px;
		padding-right: 10px;
		color: white;
		border-radius: 5px;
		background-color: black;
		position: absolute;
        top: 78%;
		right: 10px;
	}
	.cor:hover{
		cursor:pointer;
	}
	A:link { 
		COLOR: lightgrey; 
		TEXT-DECORATION: none;
		font-weight: lighter;
		text-decoration: underline; 
	}
	A:visited { COLOR: #696969; 
		TEXT-DECORATION: none;
		font-weight: lighter;
	}
	A:active { COLOR: #696969;
		TEXT-DECORATION: none; 
	}
	A:hover { COLOR: #585858;
		TEXT-DECORATION: none; 
		font-weight: lighter ;
	}
    #back{
        width: 35px;
        border-radius: 100%;
        position: relative;
        top: 10px;
        left: 25px;
    }
    #button4{
        width: 120px;
		height: 40px;
		position: absolute;
		top: 5px;
		right: 25px;
		border-radius: 5px;
		background-color: grey;
		border:1px solid;
		color: white;
	}
    input[type=radio]:focus {
    	outline: none;
    	box-shadow: 0px 0px 0px #888888;
    }
</style>
<script>
function fill(dname){
	var d="";
	$("#pname").val(dname);
    <%String uName=request.getRemoteUser();%>
	$.post("GetCon.jsp",
    {
        fname:dname
    },
    function(data,status){
        d=data;
        $("#fc").val(d);
        if(dname.indexOf(".html")>-1){
            $("#ht").prop("checked", true);
        }else{
            $("#cs").prop("checked", true);
        }
    });
}
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#save").click(function(){
       	var nam=$("#pname").val();
       	var fi=$("[name='file']:checked").val();
        if (nam!="") {
       		var namp=$("#pname").val();
        $.post("iSave.jsp",
        {
            fc: jQuery("textarea#fc").val(),
         	pname: namp,
         	file: fi,
            pp: $("[name='PP']:checked").val()
        },
        function(data, status){
    		$("#sl").slideUp();
      	  	$("#sl").text(data);
        	$("#sl").slideDown(500);
        	setTimeout(myFunction,5000);
            if(namp.indexOf(".html")>-1||namp.indexOf(".css")>-1){
                namp=namp;
            }else{
                namp=namp+"."+fi;
            };
            $("#"+namp).hide();
        	$("#ul").prepend("<li><a href=\"javascript:fill(\'"+namp+"\')\">"+namp+"</a></li>");
            $("#dra").fadeIn(1000);
       	});
    }else{
    		$("#sl").slideUp();
    		$("#sl").text("Please Name This Website!");
        	$("#sl").slideDown(500);
        	setTimeout(myFunction,5000);
    };
   });
    $("#cr").click(function(){
        var nam=$("#pname").val();
        if (nam!="") {
        $.post("iSend.jsp",
        {
          	fc: jQuery("textarea#fc").val(),
         	pname: nam,
         	file: $("[name='file']:checked").val(),
            pp: $("[name='PP']:checked").val()
        },
        function(data, status){
    		$("#sl").slideUp();
      	  	$("#sl").text(data);
        	$("#sl").slideDown(500);
        	setTimeout(myFunction,5000);
        	if (data.indexOf("Cr")>-1) {
                setTimeout(SendFunction,1500);    
    		};
    });
    }else{
    	$("#sl").slideUp();
    	$("#sl").text("Please Name This Website!");
        $("#sl").slideDown(500);
		setTimeout(myFunction,5000);
    };
   });
});
</script>

<script>
function myFunction() {
    $("#sl").slideUp(500);
}
function SendFunction(){
    window.location.href = "iSearch.jsp";
}
</script>
<div id="sl"></div>
<body bgcolor="#e6e6e6">
<br><br><br>
<div id="dra">
Saved drafts :
<%
File file = new File("C:"+File.separator+"iSWF"+File.separator+uName+File.separator+"draft");
String[] sc=file.list();
%><ul id="ul"><%
int count=0;
for (int i=0;i<sc.length;i++) {
    count++;
	%>
	<li><a class="cor" id="<%=sc[i]%>" href="javascript:fill('<%=sc[i]%>')"><%=sc[i]%></a></li>
	<%
}
if(count==0){%>
    <script>
        $(document).ready(function(){
            $("#dra").hide();
        });
    </script>
<%}%>
</ul>
</script>
</div>
    <br>
<form action="iSend.jsp" method="POST">
<textarea spellcheck="false" id="fc" class="ho" style="width: 97%;font-size: 20px;padding-top:20px;padding-left: 1%;padding-right: 1%;" placeholder="Start typing your HTML codes here !" rows="11" name="fc" autofocus></textarea>
<input onClick="this.select();" type="text" autocomplete="off" name="pname" class="ho" id="pname" placeholder="Name The Page" style="width:48%;height:30px;padding-left:1%;padding-right:1%;">
<div id="bar" class="ho">
<button type="button" class="ho" id="save"><b>Save Draft</b></button>
<button class="ho" type="button" id="cr" value="Save"><b>Create Page</b></button>
<button id="button4" class="ho" type="button" onclick="window.location.href='/logout.jsp'"><b>Log Out</b>
</button>
<img id="back" src="back.png" onclick="window.location.href=' iSearch.jsp'">
</div>
<br><br>
<div id="privacy">
Privacy :<br>
<input type="radio" name="PP" value="pr" checked> Private <br>
<input type="radio" name="PP" value="pu"         > Public  <br>
</div>
<br><br>
<div id="rad">
Save : <br>
<input type="radio" name="file" id="ht" value="html" checked> As HTML file <br>
<input type="radio" name="file" id="cs" value="css"         > As CSS file  <br>
</div>
</form>
</body>
</html>
