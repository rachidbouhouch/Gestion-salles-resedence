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
            <div class="flex justify-center mt-4">
                <button type="submit">
                   <a class="text-black bg-primary block w-full py-2 px-20 text-center text-white bg-primary border border-primary rounded hover:bg-transparent hover:text-primary transition uppercase font-roboto font-medium">Login</a>
                </button>
            </div>
        </form>

        <p class="mt-4 text-gray-600 text-center">
            Don't have an account? <a href="register.jsp" class="text-primary">Register Now
        </a>
        </p>
    </div>
</div>
<c:choose>
    <c:when test="${connected == true}">pizza.
        <div id="alert-vert" tabindex="-1" class="flex items-end justify-end h-full overflow-y-auto overflow-x-hidden fixed bottom-0 right-0 z-50 md:inset-0 h-modal md:h-full">
            <div class="flex p-4 mb-4 bg-green-100 rounded-lg dark:bg-green-200" role="alert">
                <svg class="flex-shrink-0 w-5 h-5 text-green-700 dark:text-green-800" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z" clip-rule="evenodd"></path></svg>
                <div class="ml-3 mr-10 text-sm font-medium text-green-700 dark:text-green-800">
                    Login Successful.
                </div>
                <button type="button" class="ml-auto -mx-1.5 -my-1.5 bg-green-100 text-green-500 rounded-lg focus:ring-2 focus:ring-green-400 p-1.5 hover:bg-green-200 inline-flex h-8 w-8 dark:bg-green-200 dark:text-green-600 dark:hover:bg-green-300" data-dismiss-target="#alert-vert" aria-label="Close">
                    <span class="sr-only">Close</span>
                    <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                </button>
            </div>
        </div>

    </c:when>

</c:choose>

<!-- form wrapper end -->
<%@include file="footer.jsp"%>

</body>
</html>
