<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 6/4/2022
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp"%>
<!-- form wrapper -->
<div class="container py-16">
    <div class="bg-white max-w-lg mx-auto shadow px-6 py-7 rounded overflow-hidden">
        <h2 class="text-2xl uppercase font-medium mb-1">
            create an acocunt
        </h2>
        <p class="text-gray-600 mb-6 text-sm">
            Register here if you don't have account
        </p>
        <form action="register" method="post">
            <div class="space-y-4">
                <div>
                    <label class="text-gray-600 mb-2 block">
                        First Name <span class="text-primary">*</span>
                    </label>
                    <input type="text" name="prenom" class="input-box" placeholder="rachid" required>
                </div>
                <div>
                    <label class="text-gray-600 mb-2 block">
                        Last Name <span class="text-primary">*</span>
                    </label>
                    <input type="text" class="input-box" name="nom" placeholder="ait lhouss" required>
                </div>
                <div>
                    <label class="text-gray-600 mb-2 block">
                        Email Address <span class="text-primary">*</span>
                    </label>
                    <input type="email" class="input-box" name="email" placeholder="example@mail.com" required>
                </div>
                <div>
                    <label class="text-gray-600 mb-2 block">Password <span class="text-primary">*</span></label>
                    <input type="password" class="input-box" name="password" placeholder="password" required>
                </div>
            </div>
            <div class="flex justify-center mt-4">
                <button type="submit"
                        >
                    <a class="text-black bg-primary block w-full py-2 px-20 text-center text-white bg-primary border border-primary rounded hover:bg-transparent hover:text-primary transition uppercase font-roboto font-medium">create account</a>
                </button>
            </div>
        </form>
        <p class="mt-4 text-gray-600 text-center">
            Already have an account? <a href="login.jsp" class="text-primary">Login Now</a>
        </p>
    </div>
</div>
<!-- form wrapper end -->

<%@include file="footer.jsp"%>

</body>
</html>
