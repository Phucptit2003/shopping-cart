
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Staff</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #F4F7F6;
        }
        .tab {
            margin: 20px auto;
            padding: 20px;
            background-color: #FFFFFF;
            border-radius: 8px;
            width: 50%;
            text-align: center;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        .tab input, .tab button {
            width: 90%;
            height: 40px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
            padding: 0 10px;
        }
        .tab button {
            background-color: #4CAF50;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
        }
        .tab button:hover {
            background-color: #45a049;
        }
        .error-message {
            color: red;
            font-weight: bold;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <h1>Admin Management Panel</h1>
    </div>

    <div class="tab">
        <h2>Add Staff</h2>

        <!-- Hiển thị thông báo lỗi nếu email đã tồn tại -->
        <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
            <div class="error-message">
                <%= errorMessage %>
            </div>
        <%
            }
        %>

        <form action="./AddStaffSrv" method="post">

            <input type="text" name="email" placeholder="Email" required>
            <input type="text" name="name" placeholder="Name" required>
            <input type="text" name="mobile" placeholder="Mobile" required>
            <input type="text" name="address" placeholder="Address" required>
            <input type="text" name="pincode" placeholder="Pincode" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="text" name="position" placeholder="Position" required>
            <input type="hidden" name="role" value="staff">
            <button type="submit">Add Staff</button>
        </form>

        <br>
        <a href="manageStaff.jsp" class="btn btn-default" style="width: 100%; margin-top: 20px;">Back to Manage Staff</a>
    </div>

    <!-- Footer -->
    <div class="footer" style="text-align: center; margin-top: 20px; padding: 10px; background-color: #4CAF50; color: white;">
        <p>&copy; 2024 Admin Panel. All Rights Reserved.</p>
    </div>
</body>
</html>
