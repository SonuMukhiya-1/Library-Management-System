<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Login Page</title>
     <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .container {
            width: 400px;
            margin: 100px auto;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            padding: 30px 20px;
            text-align: center;
        }

        .bank-heading h1 {
            font-size: 30px;
            background: linear-gradient(to right, #003366, #0099ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .divider {
            height: 3px;
            width: 60%;
            background: linear-gradient(to right, #0099ff, #003366);
            border-radius: 10px;
            margin: 0 auto 20px;
        }

        .input {
            width: 85%;
            height: 35px;
            margin: 12px 0;
            padding: 0 10px;
            border: 1px solid #ccc;
            border-radius: 25px;
            font-size: 16px;
        }

        .login {
            width: 90%;
            height: 40px;
            border: none;
            border-radius: 25px;
            background-color: #003366;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 10px;
        }

        .login:hover {
            background-color: #0055aa;
        }

        .anchor {
            color: #0066cc;
            text-decoration: none;
            font-weight: bold;
        }

        .dev-label {
            margin-top: 20px;
            font-size: 14px;
            color: #888;
        }
    </style>
   
</head>
<body>
    
   
    <div class="container">
        <div class="bank-heading">
            <h1> User Login</h1>
            <div class="divider"></div>
        </div>

            <form action="user_login_verify.jsp" method="post" onsubmit="return verify_userid() && verify_pwd();">
                <input type="text" name="member_id" id="c_id" class="input" placeholder="Member id" ><br>
                
                <input type="password" name="password" id="password" class="input" placeholder="Password" ><br>
                
                <label><input type="checkbox" name="remember" value="cookie"> Remember Me</label><br><br>
                
                <input type="submit" value="Login" class="login"><br><br>

            </form>

            <div class="dev-label">
                Developed by: <b>Sonu Mukhiya</b>
            </div>
    </div>

        <script>
            function verify_userid() {
                var uname = document.getElementById("c_id").value;
                if (uname=== "") {
                    document.getElementById("c_id").placeholder = "* Please enter Customer ID";
                    return false;
                }
                return true;
            }

            function verify_pwd() {
                var pass = document.getElementById("password").value;
                if (pass=== "") {
                    document.getElementById("password").placeholder = "* Please enter Password";
                    return false;
                }
                return true;
            }
        </script>
</body>
</html>
       