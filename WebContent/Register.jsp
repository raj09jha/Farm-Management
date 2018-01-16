


<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Register</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet" />
  	<script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    
    <script type="text/javascript">
 
function checkName()
{
	var name = document.regform.name;
	var letters = /^[a-zA-Z ]*$/;
	if(name.value.match(letters))
	{
	   name.value = name.value.toUpperCase();
	   document.getElementById("paraForName").innerHTML = '';
	   return true;
	}
	else
	{
		document.getElementById("paraForName").innerHTML = ' Enter Correct Name';
		name.focus();
		return false;
	}
}
function checkEmail()
{
	var email = document.regform.email;
	var pattern = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		
	if(email.value.match(pattern))
	{
	   document.getElementById("paraForEmail").innerHTML = '';
	   return true;
	}
	else
	{
		if(email.value=='')
		{
	    	document.getElementById("paraForEmail").innerHTML = '';
			return false;
		}
		else
		{
			document.getElementById("paraForEmail").innerHTML = ' Enter Correct Email';
			email.focus();
			return false;
		}
	}
	
}
function checkPassword()
{
	var pass = document.regform.password;
	if(pass.value.length<5)
	{
		document.getElementById("paraForPassword").innerHTML = ' Password Should Have At Least 5 Characters';
		pass.focus();
		if(pass.value=='')
		{
	    	document.getElementById("paraForPassword").innerHTML = '';
		}
		return false;
	}
	else
	{
		document.getElementById("paraForPassword").innerHTML = '';
		return true;
	}
}
function checkConfirmPassword()
{
	var pass = document.regform.password;
	var passconf = document.regform.confirmpassword;
	if(pass.value == passconf.value)
	{
		document.getElementById("paraForConfirmPassword").innerHTML = '';
		return true;
	}
	else
	{
		if(passconf.value=='')
		{
	    	document.getElementById("paraForConfirmPassword").innerHTML = '';
			return false;
		}
		else
		{
			document.getElementById("paraForConfirmPassword").innerHTML = ' Password Does Not Match';
			passconf.focus();
			return false;
		}
	}
}
function checkPhone()
{
	var phone = document.regform.phone;
	var number = phone.value;
	if(isNaN(number) || number.length!=10)
	{
		document.getElementById("paraForPhone").innerHTML = ' Enter Correct Phone Number';
		phone.focus();
		if(number=='')
		{
	    	document.getElementById("paraForPhone").innerHTML = '';
		}
		return false;
	}
	else
	{
		document.getElementById("paraForPhone").innerHTML = '';
		return true;
	}
}
function validateForm()
{
	var x;
	x = checkName();
	x = checkEmail();
	x = checkPassword();
	x = checkConfirmPassword();
	x = checkPhone();
	return x;
}    
    </script>    
</head>
<body>
<div class="container-fluid"> 
	<div class="row">
		<div class="col-md-12"> 
        	
            <h1 style="text-align:center;background-color:#222;color:white;margin:auto;font-weight:100;width:;height:50px;padding-top:5px;border-radius:5px;">I-Farm</h1>
            <div style="text-align:center;margin-top:60px;">
                <div style="width:400px;display:inline-block;">
                	<h1 style="font-size:30px;">Please Register</h1><br />
                    <form name="regform" class="form-signin" method="post" action="Register" onSubmit="return validateForm()" style="border:;">                         
                        <label for="inputName" class="sr-only">Name</label>
                        <input type="text" id="inputName" name="name" class="form-control" placeholder="Name" style="font-size:20px;" onKeyUp="checkName()" required autofocus>
                        <p id="paraForName" style="color:red;font-size:15px;"></p>
                        <label for="inputEmail" class="sr-only">Email address</label>
                        <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email Address" style="font-size:20px;" onKeyUp="checkEmail()" required>
                        <p id="paraForEmail" style="color:red;font-size:15px;"></p>
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" style="font-size:20px;" onKeyUp="checkPassword()" required>
                        <p id="paraForPassword" style="color:red;font-size:15px;"></p>
                        <label for="inputConfirmPassword" class="sr-only">Confirm Password</label>
                        <input type="password" id="inputConfirmPassword" name="confirmpassword" class="form-control" placeholder="Confirm Password" style="font-size:20px;" onKeyUp="checkConfirmPassword()" required>
                        <p id="paraForConfirmPassword" style="color:red;font-size:15px;"></p>
                        <label for="inputPhone" class="sr-only">Phone</label>
                        <input type="text" id="inputPhone" name="phone" class="form-control" placeholder="Phone" style="font-size:20px;" onKeyUp="checkPhone()" required>
                        <p id="paraForPhone" style="color:red;font-size:15px;"></p>
                        <button class="btn btn-lg btn-primary btn-block" type="submit" style="font-size:20px;">Register</button>
                    </form>
                </div>
            </div>
            
        </div>
    </div>
</div>
</body>
</html>