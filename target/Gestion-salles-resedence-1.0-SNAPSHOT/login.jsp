<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 6/4/2022
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp"%>
<!-- form wrapper -->
<div class="container py-16">
    <div class="bg-white max-w-lg mx-auto shadow px-6 py-7 rounded overflow-hidden">
        <h2 class="text-2xl uppercase font-medium mb-1">
            LOGIN
        </h2>
        <p class="text-gray-600 mb-6 text-sm">
            Login if you are a returing customer
        </p>
        <form action="login" method="post">
            <div class="flex mb-4">
                <div class="flex items-center mr-4 ">
                    <input id="inline-radio" type="radio" value="admin" name="radio-type" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600" required>
                    <label for="inline-radio" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Admin</label>
                </div>
                <div class="flex items-center mr-4">
                    <input id="inline-2-radio" type="radio" value="client" name="radio-type" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600" required>
                    <label for="inline-2-radio" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Client</label>
                </div>
            </div>
            <div class="space-y-4">
                <div>
                    <label class="text-gray-600 mb-2 block">
                        Email Address <span class="text-primary">*</span>
                    </label>
                    <input type="email" name="email" class="input-box" placeholder="Exemple@exemple.com"required>
                </div>
                <div>
                    <label class="text-gray-600 mb-2 block">Password <span class="text-primary">*</span></label>
                    <input type="password" name="password" class="input-box" placeholder="password" required>
                </div>
            </div>
            <div class="mt-4">
                <button type="submit"
                        class="text-black bg-primary block w-full py-2 text-center text-white bg-primary border border-primary rounded hover:bg-transparent hover:text-primary transition uppercase font-roboto font-medium">
                    Login
                </button>
            </div>
        </form>

        <p class="mt-4 text-gray-600 text-center">
            Don't have an account? <a href="register.jsp" class="text-primary">Register Now
        </a>
        </p>
    </div>
</div>

<!-- form wrapper end -->
<%@include file="footer.jsp"%>

</body>
</html>
