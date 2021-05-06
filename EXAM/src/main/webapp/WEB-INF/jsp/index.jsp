<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}

        select {
            width: 250px;
            margin: 10px;
            height: 25px;
        }
        select:focus {
            min-width: 250px;
            width: auto;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        /* Set a style for all buttons */
        button {
            background-color: #04AA6D;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }

        /* Extra styles for the cancel button */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        /* Center the image and position the close button */
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }

        /* The Close Button (x) */
        .close {
            position: absolute;
            right: 25px;
            top: 0;
            color: #000;
            font-size: 35px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: red;
            cursor: pointer;
        }

        /* Add Zoom Animation */
        .animate {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.6s
        }

        @-webkit-keyframes animatezoom {
            from {-webkit-transform: scale(0)}
            to {-webkit-transform: scale(1)}
        }

        @keyframes animatezoom {
            from {transform: scale(0)}
            to {transform: scale(1)}
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cancelbtn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<h1>List Student</h1>

<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Create Student</button>

<div id="id01" class="modal">

    <form class="modal-content animate" action="/student" method="post">
        <div class="container">
            <input type="text" style="margin: 10px;border-radius: 5px" placeholder="Enter full  Name" name="fullname" required>
            <input type="number" style="margin: 10px;border-radius: 5px" placeholder="Mã sinh viên" name="code" required>
            <input type="email" style="margin: 10px;border-radius: 5px" placeholder="Enter email" name="email" required>
            <input type="text" style="margin: 10px;border-radius: 5px" placeholder="Enter phone" name="phone" required>
            <input type="text" style="margin: 10px;border-radius: 5px" placeholder="Enter dia chi" name="vilage" required>

            <select name="sex" id="sex" style="border-radius: 5px">
                <option value="true" >Nam</option>
                <option value="false">Nữ</option>
            </select>

            <button type="submit"  class="btn">Create</button>
        </div>

    </form>
</div>


<div class="w3-container" style="margin-top: 20px">

    <table class="w3-table w3-striped">
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Sex</th>
            <th>Địa chỉ</th>
            <th>Ngày sinh</th>
            <th>Acction</th>
        </tr>
                <c:forEach var="p" items="${students}">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.fullname}</td>
                        <td>${p.email}</td>
                        <td>${p.phone}</td>
                        <td>${p.sex}</td>
                        <td>${p.village}</td>
                        <td>${p.sex}</td>
                        <td><p>Sửa </p>| <p>Xóa </p></td>
                    </tr>
                </c:forEach>

    </table>
</div>


<script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

</body>
</html>
</body>
</html>