<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .profile-container {
            width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .detail {
            margin: 10px 0;
            font-size: 16px;
        }
        .label {
            font-weight: bold;
            color: #555;
        }
        .buttons {
            margin-top: 30px;
            text-align: center;
        }
        .buttons form {
            display: inline-block;
            margin: 0 10px;
        }
        .buttons button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        .edit-btn { background-color: #28a745; }
        .delete-btn { background-color: #dc3545; }
    </style>
</head>
<body>
    <div class="profile-container">
        <h2>Employee Profile</h2>

        <div class="detail"><span class="label">Employee ID:</span> ${empId}</div>
        <div class="detail"><span class="label">First Name:</span> ${fname}</div>
        <div class="detail"><span class="label">Last Name:</span> ${lname}</div>
        <div class="detail"><span class="label">Email:</span> ${email}</div>
        <div class="detail"><span class="label">Mobile:</span> ${mobile}</div>
        <div class="detail"><span class="label">Age:</span> ${age}</div>
        <div class="detail"><span class="label">Gender:</span> ${gender}</div>
        <div class="detail"><span class="label">Department:</span> ${department}</div>
        <div class="detail"><span class="label">Salary:</span> ${salary}</div>
        <div class="detail"><span class="label">Experience:</span> ${experience}</div>
        <div class="detail"><span class="label">Address:</span> ${address}, ${city}, ${state}, ${country}</div>

        <div class="buttons">
            <!-- Edit button -->
            <form action="editProfile" method="POST">
                <input type="hidden" name="empId" value="${empId}">
                <button type="submit" class="edit-btn">Edit Profile</button>
            </form>

            <!-- Delete button -->
            <form action="deleteProfile" method="POST" onsubmit="return confirm('Are you sure you want to delete your profile?');">
                <input type="hidden" name="empId" value="${empId}">
                <button type="submit" class="delete-btn">Delete Profile</button>
            </form>
        </div>

        <div class="back-link" style="text-align:center; margin-top:20px;">
            <a href="login.html">Logout / Back to Login</a>
        </div>
    </div>
</body>
</html>
