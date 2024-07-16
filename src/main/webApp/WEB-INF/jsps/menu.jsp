<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        ul {
            list-style-type: none; /* Remove default bullet points */
            padding: 0;
            margin: 0;
        }
        .nav-text {
            margin-left: 10px; /* Adjust the space between the icon and text */
            color: white; /* Set text color to white */
            transition: color 0.3s; /* Smooth transition for color change */
        }
        .main-menu {
            background-color: #1A191F;
            color: white;
            display: flex; /* Use flexbox to align items vertically */
            flex-direction: column; /* Align items vertically */
            justify-content: flex-start; /* Align items at the start of the container */
            height: 100vh; /* Set the height to cover the entire viewport */
            padding: 40px; /* Optional padding for better appearance */
            width: max-content; /* Set width to content width */
            margin: 0px; /* Add margin */
        }
        .main-menu li {
            margin-bottom: 10px; /* Optional margin between menu items */
        }
        .main-menu li a {
            display: block; /* Make links take up the entire width of the menu */
            padding: 10px; /* Add padding to create space around the link text */
            text-decoration: none; /* Remove default underline */
            transition: background-color 0.3s; /* Smooth transition for background color change */
        }
        .main-menu li a:hover {
            background-color: lightskyblue; /* Change background color on hover */
            
        }
        .main-menu li a:hover .nav-text {
            color: #fff; /* Change text color on hover */
        }
    </style>
</head>
<body>
    <nav class="main-menu">
        <ul>
            <li><a href="viewCreateLeadPage" target="_main">
                <i class="fa fa-edit"></i>
                <span class="nav-text">Create Lead</span>
            </a></li>
          <li><a href="listAllLeads" target="_main">
                <i class="fa fa-phone fa-1x"></i>
                <span class="nav-text">List of Leads</span>
            </a></li>
            <li><a href="listallContact" target="_main">
                <i class="fa fa-list fa-1x"></i>
                <span class="nav-text">List of Contacts</span>
            </a></li>
            
        </ul>
    </nav>
</body>
</html>


