<%-- 
    Document   : insertInformation
    Created on : Oct 2, 2019, 10:16:39 AM
    Author     : quangkhanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>
            page
        </title>
        <style>
            #container {
                position: fixed;
                width: fit-content;
                height: fit-content;
                top: 50%;
                left: 20%;
                margin-top: -20%;
                margin-left: 5%;         
                background-color: aliceblue;
                border-radius: 3px;
                border: 1px solid dodgerblue;
                box-shadow: 0 1px 2px rgba(0, 0, 0, 1) 0 0 0 5px #f5f7f8;
            }
            #lower {
                color: red;
                width: 100%;
                height: 69px;
                margin-top: 20px;
                margin-bottom: 10px;

            }
            input[type=checkbox] {
                margin-left: 20px;
                margin-top: 30px;
            }
            .mid {
                text-align: center;
                color: green;
            }
            label {
                color: #555;
                display: inline-block;
                margin-left: 18px;
                padding-top: 10px;
                font-size: 14px;
            }
            input {
                font-family: "Helvetica Neue", Helvetica, sans-serif;
                font-size: 12px;
                outline: none;
            }
            input[type=text],
            input[type=password] {
                color: #777;
                padding-left: 10px;
                margin: 10px;
                margin-top: 12px;
                margin-left: 18px;
                width: 290px;
                height: 35px;
                display: inline-block;
            }
            input[type=submit] {
                text-align: center;
                padding-left: 10px;
                padding-right: 10px;
                margin-left: 45%;
                margin-top: 20px;
                text-emphasis: font;
                float: left;
                width: 80px;
                height: 20px;
                border-radius: 30px;
                border: 1px solid #489ccc;
                box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0 rgba(255, 255, 255, .5);
                background-image: -webkit-gradient(linear, left top, left bottom, from(#acd6ef), to(#6ec2e8));
                background-image: -moz-linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
                background-image: linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
                cursor: pointer;
            }
            
        </style>
    </head>
    <body id="container">
        <h1 class="mid">
            Insert Student's Information
        </h1>
        <form method="GET" target="_self" action="LoginServlet">
            <div id="lower">
                <label for="firstname">First Name:</label>
                <input type="text" placeholder="Type your first name" 
                            name="firstname" required>
                <label for="lastname">Last Name:</label>
                <input type="text" placeholder="Type your last name"
                            name="lastname" required> <br>
                <label for="username">Student Id: </label><br>
                <input type="text" placeholder="Type your username in here" 
                            name="student_id" required > <br>
                <label for="address">Address</label><br>
                <input type="text" placeholder="Type address"
                       name="address" required> <br>
                <label for="phoneNumber">Phone Number</label><br>
                <input type="text" name="phoneNumber" 
                       placeholder="Type phone number" required> <br>
                <label for="password">Password: </label><br>
                <input type="password" placeholder="Your password" 
                            name="password" id="password" required> <br> 
                <input type="submit" value="Login">                
            </div>
        </form>
    </body>
</html>

