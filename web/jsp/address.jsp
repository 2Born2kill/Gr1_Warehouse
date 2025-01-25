<%-- 
    Document   : address
    Created on : Jan 25, 2025, 7:12:06 AM
    Author     : Dungt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.Users"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Address Information</title>
        <link rel="stylesheet" type="text/css" href="../assets/css/vendors/feather-icon.css">
        <link id="color-link" rel="stylesheet" type="text/css" href="../assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="../assets/css/address.css">
    </head>
    <body>
        <div class="container">
            <h2>Address Information</h2>
            <form action="AddressController" method="post">
                <div class="form-group">
                    <label for="address_name">Address Name:</label>
                    <input type="text" class="form-control" id="address_name" name="address_name" required>
                </div>
                <div class="form-group">
                    <label for="recipient_name">Recipient Name:</label>
                    <input type="text" class="form-control" id="recipient_name" name="recipient_name" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" class="form-control" id="phone" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="full_address">Full Address:</label>
                    <input type="text" class="form-control" id="full_address" name="full_address" required>
                </div>
                <div class="form-group">
                    <label for="default_address">Default Address:</label>
                    <input type="checkbox" id="default_address" name="default_address" value="1">
                </div>
                <button type="submit" class="btn btn-primary">Save Address</button>
            </form>
        </div>
    </body>
</html>