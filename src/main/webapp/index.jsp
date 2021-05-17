<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    </head>

    <body class="p-4" style="background-color:#15151A;">
    	
        <section class="container">
			<h3>${messege}</h3>
			<h3>${welcome}</h3>
			<h3>${error}</h3>
            <div class="d-flex align-items-center" style="flex-direction: column;margin-top: 18px;border-radius:12px">
                <div class="col-12 col-lg-4 col-sm-6 p-4">
                    <h2 style="margin-top: 18px;color:white;font-weight:bold;text-align:left;">E-Shopping</h2>

                    <div class="p-4" style="background-color:white;border-radius: 10px;margin-top:20px">
                        <h1 style="font-weight:bold;font-size:29px">Log in</h1>
                        <h1 style="font-size:16px">Don't Have An Account?<a style="color:#1E74FF" href="register"> Register now</a></h1>
                        <form action="login" method="post">
                            <div class="form-label-group" style="margin-top: 8px;">
                                <label style="font-family: 'Poppins', sans-serif;font-weight: 100; font-size: 12px; color:rgb(142, 142, 142)" for="inputPassword">Username</label>
                                <input placeholder="Username" class="form-control" type="text" name="username" />

                            </div>

                            <div class="form-label-group" style="margin-top: 8px;">
                                <label style="font-family: 'Poppins', sans-serif;font-weight: 100; font-size: 12px; color:rgb(142, 142, 142)" for="inputPassword">Password</label>
                                <input placeholder="Password" class="form-control" type="password" name="password" />

                            </div>
                            <button style="background-color:rgb(54, 71, 223);border: 0;margin-top:40px;font-family: 'Poppins', sans-serif;border-radius: 6px;width:100%" class="primaryAction btn btn-lg btn-primary btn-block" type="submit">Log in</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>


        <style>
        	h3{
        		text-align: center;
        		color: white;
        	}
            .form-control {
                display: block;
                width: 100%;
                padding: 0.56rem 0.8rem;
                font-size: 1rem;
                font-weight: 400;
                line-height: 1.5;
                color: #616368;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #D7D6DA;
                border-radius: 0.25rem;
               
            }
        </style>
    </body>

    </html>
