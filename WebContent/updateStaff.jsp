<!DOCTYPE html>
<html>
<head>
    <title>Update Staff</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            width: 400px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            transition: all 0.3s ease;
        }

        input:focus {
            border-color: #74ebd5;
            box-shadow: 0 0 8px rgba(116, 235, 213, 0.8);
            outline: none;
        }

        .btn-group {
            display: flex;
            gap: 10px;
        }

        button {
            flex: 1;
            padding: 10px;
            background: #74ebd5;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s ease;
        }

        button:hover {
            background: #56cfe1;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #74ebd5;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Staff Information</h2>
        <form action="./UpdateStaffSrv" method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required readonly value="<%= request.getParameter("email") %>"><br>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required value="<%= request.getParameter("name") %>"><br>

            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" required value="<%= request.getParameter("mobile") %>"><br>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required value="<%= request.getParameter("address") %>"><br>

            <label for="pincode">Pincode:</label>
            <input type="text" id="pincode" name="pincode" required value="<%= request.getParameter("pincode") %>"><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required value="<%= request.getParameter("password")%>"><br>

            <label for="position">Position:</label>
            <input type="text" id="position" name="position" required value="<%= request.getParameter("position") %>"><br>

            <div class="btn-group">
                <button type="submit">Update</button>
                <button type="reset">Reset</button>
            </div>
        </form>
        <a href="lstStaffToUpdate.jsp">Back to Staff List Page</a>
    </div>
</body>
</html>
