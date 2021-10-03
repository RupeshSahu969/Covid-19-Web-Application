<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;
         background-attachment:fixed;
         background-size:cover;

}
* {box-sizing: border-box;}

/*Table*/
.table-new{
	position:center;
	bottom:40px;
	right=200px;
	background-color:
	

}

/* Button used to open the contact form - fixed at the bottom of the page */
.login-button {
  background-color: #4F7942;
  color: white;
  padding: 16px 20px;
  border:1;
  border-radius:10px;
  cursor: pointer;
  opacity: 0.8;
  position: center;
  bottom: 23px;
  right: 28px;
  width: 200px;
}

/*Register button*/
.reg-button {
  background-color: #40E0D0;
  color: white;
  padding: 16px 20px;
  border: 1;
  border-radius:10px;
  cursor: pointer;
  opacity: 0.8;
  position: center;
  bottom: 23px;
  right: 28px;
  width: 200px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 250px;
  right: 500px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  border:2;
  border-color:black;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: skyblue;
  color: white;
  padding: 16px 20px;
  border:1;
 border-radius:20px;
  cursor: pointer;
  width: 25%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Set a style for the enter button */
.form-container .btn1 {
  background-color: skyblue;
  color: white;
  padding: 16px 20px;
  border:1;
 border-radius:20px;
  cursor: pointer;
  width: 30%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel1 {
  background-color: red;
 width: 30%;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
</head>
<body background='covid10.jpg' >

<p>&nbsp;
<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=orange><u>COVID</font><font color=white> FREE</font><font color=green> INDIA</font></h1></u>
&nbsp;&nbsp;<h3>  The <u>COVID FREE INDIA</u> project is making with the purpose<br>
&nbsp;	to provide vaccines to all the Indians as soon as possible.<br>
&nbsp;	So we can overcome this problem ,situation & successfully<br> 
&nbsp;	defeat this </b><font color =red>Corornavirus</b></font>.</h3>


<table style="margin-top:50px;margin-left:80px;" border=0 width=40% height=60% >
<tr>
<td colspan=2 ><h2><font color=#36454F  ><b>User Login
<tr>
<div id="regform">
<form name=frm>
<td><button  class="reg-button"  onclick=x()>Register</button>
</form>
</div>
<td><button class="login-button" onclick="openForm()">Login</button>
<tr>
<td colspan=2>&nbsp;
<tr>
<td colspan=2 ><h2><font color=#36454F ><b>Center Login
<tr>
<td><button class="reg-button" name=ver onclick="openForm2()">Verification</button>
<td><button class="login-button" onclick="openForm1()">Login</button>
<tr>
</table>







<div class="form-popup" id="myForm">
  <form action="myproject1_welcomelogin.jsp" class="form-container">
    <h1><font color=skyblue>Login</font></h1>	
<p>&nbsp;
<p>&nbsp;							<%-- user popup login form--%>
    <label for="Vaccination ID" ><b>Vaccination ID</b></label>
    <input type="text" placeholder="Enter Vaccination ID" name="vid" required >
<p>&nbsp;

   <center>
    <button type="submit" class="btn"><b>Login</b></button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
 </center>
  </form>
</div>


<div class="form-popup" id="myFormcenter">
  <form action="myproject1_welcomelogin.jsp" class="form-container">
    <h1><font color=skyblue>Login</font></h1>	
<p>&nbsp;							<%--center login popup form--%>
<p>&nbsp;
    <label for="Center"><b>Center ID</b></label>					
    <input type="text" placeholder="Enter Center ID" name="cid" required >
<p>&nbsp;

   <center>
    <button type="submit" class="btn"><b>Login</b></button>
    <button type="button" class="btn cancel" onclick="closeForm1()">Close</button>
 </center>
  </form>
</div>



<div class="form-popup" id="myForm2">
  <form action="myproject1_welcomelogin.jsp" class="form-container">
    <input type="text" placeholder="Enter Center ID" name="verify" required >	<%--center veryfication popup form--%>
<p>&nbsp;
<center>
    <button type="submit" class="btn1" ><b>Enter</b></button>
    <button type="button" class="btn cancel1" onclick="closeForm2()">Close</button>
 </center>
  </form>
</div>





<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}

function openForm1() {
  document.getElementById("myFormcenter").style.display = "block";
}

function closeForm1() {
  document.getElementById("myFormcenter").style.display = "none";
}


function openForm2() {
  document.getElementById("myForm2").style.display = "block";
}

function closeForm2() {
  document.getElementById("myForm2").style.display = "none";
}

function x()
{
 frm.action="myproject1_userfrm.jsp";
}

</script>

</body>
</html>
