<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 6/4/2022
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage = "true" %>

<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp"%>
<section class="flex items-center h-screen dark:bg-gray-900 dark:text-gray-100">
    <div class="container flex flex-col items-center justify-center px-5 mx-auto my-8">
        <div class="max-w-md text-center">
            <h2 class="mb-8 font-extrabold text-9xl dark:text-gray-600">
                <span class="sr-only">Error</span>404
            </h2>
            <p class="text-2xl font-semibold md:text-3xl">Sorry, we couldn't find this page.</p>
            <p class="mt-4 mb-8 dark:text-gray-400">But dont worry, you can find plenty of other things on our homepage.</p>
            <a rel="noopener noreferrer" href="index.jsp" class="px-8 py-3 font-semibold rounded dark:bg-violet-400 dark:text-gray-900">Back to homepage</a>
        </div>
    </div>
</section>
<%@include file="footer.jsp"%>

</body>
</html>
