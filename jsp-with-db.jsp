<!Doctype html>
<html>
   <head>
	  <title>Ajax with DB</title>
	  <script src="" type="text/javascript"></script>
	  <link rel="stylesheet" type="text/css" href="" />
   </head>
   
   <body>
	  <p> Start of AJAX Example with DataBase: <br />
		<!-- marquee><h1>This is example-2 for ajax</h1></marquee -->
		
		<form name="frmAjax">  
		  <input type="text" name="txt1" value="2" />  
		  <input type="button" value="ShowTable" onClick="sendInfo()" />  
		</form>  
		  
		<span id="dragon"> </span>  
	  </p>
	  
	  <script type="text/javascript">
		/** Call to AJAX **/
		var request;  
		function sendInfo()  
		{  
			var v=document.frmAjax.txt1.value;  
			var url="mysqlConJSP.jsp?val="+v;  
			  
			if(window.XMLHttpRequest){  
				request=new XMLHttpRequest();  
			}  
			else if(window.ActiveXObject){  
				request=new ActiveXObject("Microsoft.XMLHTTP");  
			}  
			  
			try  
			{  
				request.onreadystatechange=getInfo;  
				request.open("GET",url,true);  
				request.send();  
			}  
			catch(e)  
			{  
				alert("Unable to connect to server");  
			}  
		}  
		  
		function getInfo(){  
			if(request.readyState==4){  
				var val=request.responseText;  
				document.getElementById('dragon').innerHTML=val;  
			}  
		}
	  </script>
   </body>
   
</html>

