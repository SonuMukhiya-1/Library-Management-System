<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sonu Library | Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            box-sizing: border-box;
        }

        body {
            background-color: #f8f9fa;
        }

        nav {
            background-color: #2c3e50;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav .navbar {
            color: #fff;
            font-size: 26px;
            font-weight: bold;
        }

        nav ul {
            list-style: none;
            display: flex;
        }

        nav ul li {
            margin-left: 30px;
        }

        nav ul li a {
            color: #ecf0f1;
            text-decoration: none;
            font-size: 16px;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: #1abc9c;
        }

        .welcome {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: calc(100vh - 80px);
            background: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.4)),
                        url('images/library_front.jpg') no-repeat center center/cover;
            text-align: center;
            color: white;
            padding: 30px;
        }

        .welcome h1 {
            font-size: 48px;
            font-weight: 700;
        }

        .welcome p {
            font-size: 20px;
            margin-top: 15px;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #2c3e50;
            color: #fff;
            font-size: 26px;
            font-weight: bold;
        }

        @media (max-width: 768px) {
            nav {
                flex-direction: column;
                align-items: flex-start;
            }

            nav ul {
                flex-direction: column;
                width: 100%;
                margin-top: 10px;
            }

            nav ul li {
                margin: 10px 0;
            }

            .welcome h1 {
                font-size: 36px;
            }

            .hero p {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>


<nav>
    <div class="navbar">📘 Sonu Library</div>
    <ul>
        <li><a href="Home_page.jsp">Home</a></li>        
        <li><a href="gallery.jsp">Gallery</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="user_login.jsp">User Login</a></li>
        <li><a href="login_page.jsp">Admin Login</a></li>
    </ul>
</nav>


    <div class="welcome">
        <div>
            <h1>Welcome to Sonu Library</h1>
            <p>Your digital gateway to books, knowledge, and education. Explore our collection and services.</p>
        </div>
    </div>

    <footer>
        <p>Developer By : Sonu Mukhiya</p>
    </footer>

</body>
</html>
