<%-- 
    Document   : SignupPage
    Created on : 28 Mar, 2018, 9:19:00 PM
    Author     : jayantb95
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
    </head><body>
        <h1><center>Registration Form</center></h1></br>

        <h2><form action="ServletRegister">


                <div class="container">

                    <center><table  >
                            <tr>
                                <td>
                                    <label><b>Full Name</b></label>
                                </td>
                                <td>
                                    <input type="text" 
                                           placeholder="Enter your Full Name"
                                           name="nameRegister" 
                                           required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label><b>Username</b></label>
                                </td>
                                <td>

                                    <input type="text" 
                                           placeholder="Enter your username"
                                           name="usernameRegister" 
                                           required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label><b>Contact</b></label>
                                </td>
                                <td>
                                    <input type="tel" 
                                           placeholder="Enter your contact number"
                                           name="contactRegister" 
                                           maxlength="10"
                                           required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label><b>Address</b></label> 
                                </td>
                                <td>
                                    <input type="text" 
                                           placeholder="Enter your address" 
                                           name="addressRegister"
                                           required >
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label><b>Password</b></label>
                                </td>
                                <td>
                                    <input type="password" 
                                           placeholder="Enter Password" 
                                           name="passwordRegister" 
                                           required >
                                </td>
                            </tr>
                        </table></center>
                    <center><button type="submit">Register</button><br/></br>
                        <a href="LoginPage.jsp">Already a member? Login here</a></center>
                </div>
            </form>
        </h2>
</body>
</html>
<style>
    body{
        font-family:iceland;
    }
</style>