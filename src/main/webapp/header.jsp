<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 6/4/2022
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application Web javaEE</title>
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Roboto:wght@400;500;700&display=swap"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
          crossorigin="anonymous" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/input.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">

</head>
<body>
<!-- navbar -->
<nav class="bg-gray-800 hidden lg:block">
    <div class="container">
        <div class="flex">

            <!-- all category -->
            <div class="px-8 py-4 bg-primary flex items-center cursor-pointer group relative">
                <!-- logo -->
                <a href="#" class="block w-32">
                    <img src="assets/images/logoo.png" alt="logo" class="w-full">
                </a>
                <!-- logo end -->
            </div>
            <!-- all category end -->

            <!-- nav menu -->
            <div class="flex items-center justify-between flex-grow pl-12">
                <div class="flex items-center space-x-6 text-base capitalize">
                    <a href="index.jsp" class="text-gray-200 hover:text-white transition">Home</a>
                    <a href="listRooms.jsp" class="text-gray-200 hover:text-white transition">Rooms</a>
                    <a href="#" class="text-gray-200 hover:text-white transition">About us</a>
                    <a href="#" class="text-gray-200 hover:text-white transition">Contact us</a>
                </div>


                                <c:choose>
                                <c:when test="${!connected}">
                                    <div class="ml-auto justify-self-end">
                                        <a href="login.jsp" class="text-gray-200 hover:text-white transition">
                                            login
                                        </a>
                                        <a href="register.jsp" class="text-gray-200 hover:text-white transition">
                                            register
                                        </a>
                                    </div>

                                </c:when>
                                <c:otherwise>

                <!-- Settings -->
                <div class="px-8 py-4 bg-primary flex items-center cursor-pointer group relative">
                    <span class="text-white">
                        <i class="fas fa-bars"></i>
                    </span>

                    <div
                            class="absolute left-0 top-full w-50 bg-white shadow-md py-3 invisible opacity-0 group-hover:opacity-100 group-hover:visible transition duration-300 z-50 divide-y divide-gray-300 divide-dashed">

                    <!-- Profile -->
                                    <a href="profileinfo" class="px-5 py-2 flex items-center hover:bg-gray-100 transition">
                                        <i class="fas fa-user w-5 h-5 object-contain"></i>
                                        <span class="ml-3 text-gray-600 text-sm font-bold">Profile</span>
                                    </a>
                                    <!-- profile end -->
                                    <!-- Logout -->
                                    <a href="logout" class="px-5 py-2 flex items-center hover:bg-gray-100 transition">
                                        <i class="fas fa-door-open w-5 h-5 object-contain"></i>
                                        <span class="ml-3 text-gray-600 text-sm font-bold">Logout</span>
                                    </a>
                                    <!-- Logout end-->
                    </div>
                </div>
                                </c:otherwise>
                                </c:choose>





            <!-- nav menu end -->
            </div>
        </div>
    </div>
</nav>
<!-- navbar end -->

