<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table
{
  width:45%;
  margin-left:350px;
  margin-top:200px;
}
td
{
  height:40px;
}

body {
  position: relative;
  overflow-x: hidden;
}
html {
	height: 100%;
	/*Image only BG fallback*/
		/*background = gradient + image pattern combo*/
	background: 
		linear-gradient(rgba(196, 102, 0, 0.6), rgba(155, 89, 182, 0.6)) repeat;
	/*background = gradient + image pattern combo*/
	
}
</style>
</head>
<body>
		<FORM ENCTYPE="multipart/form-data" ACTION="upload_file" METHOD=POST>
		<br><br><br>
		<table border="2" >
		<tr>
			<center><B>UPLOAD THE FILE</center>
		</tr>
		<tr>
		<td>
			<b>Choose the file To Upload:</b>
			</td>
			<td>
			<INPUT NAME="file" TYPE="file">
			</td>
		</tr>
		<tr>
			<td >
			<p >
			<INPUT TYPE="submit" VALUE="Send File" >
			</p>
			</td>
		</tr>
		</table>
		</FORM>
</body>
</html>