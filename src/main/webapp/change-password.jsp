<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 6/8/2022
  Time: 3:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<%@ include file="header.jsp"%>
<!-- breadcrum -->
<div class="py-4 container flex gap-3 items-center">
    <a href="index.html" class="text-primary text-base">
        <i class="fas fa-home"></i>
    </a>
    <span class="text-sm text-gray-400"><i class="fas fa-chevron-right"></i></span>
    <p class="text-gray-600 font-medium uppercase">My Account</p>
</div>
<!-- breadcrum end -->

<!-- account wrapper -->
<div class="container lg:grid grid-cols-12 items-start gap-6 pt-4 pb-16">
    <!-- sidebar -->
    <div class="col-span-3">
        <!-- account profile -->
        <div class="px-4 py-3 shadow flex items-center gap-4">
            <div class="flex-shrink-0">
                <img src="assets/images/avatar.png"
                     class="rounded-full w-14 h-14 p-1 border border-gray-200 object-cover">
            </div>
            <div>
                <p class="text-gray-600">Hello,</p>
                            <c:choose>
                            <c:when test="${prenom == null && nom == null} ">
                            <h4 class="text-gray-800 capitalize font-medium">Unkonnu
                            </c:when>
                            <c:otherwise>
                            <h4 class="text-gray-800 capitalize font-medium"><c:out value="${nom}"/> <c:out value="${prenom}"/>
                            </c:otherwise>
                            </c:choose>

                              </div>
        </div>
        <!-- account profile end -->

        <!-- profile links -->
        <div class="mt-6 bg-white shadow rounded p-4 divide-y divide-gray-200 space-y-4 text-gray-600">
            <!-- single link -->
            <div class="space-y-1 pl-8">
                <a href="account.html"
                   class="relative text-base font-medium capitalize hover:text-primary transition block">
                    Manage account
                    <span class="absolute -left-8 top-0 text-base">
                            <i class="far fa-address-card"></i>
                        </span>
                </a>
                <a href="profileinfo" class="hover:text-primary transition capitalize block">Profile information</a>
                <a href="changepassword" class="hover:text-primary transition capitalize block text-primary">change password</a>
            </div>
            <!-- single link end -->
            <!-- single link -->
            <div class="pl-8 pt-4">
                <a href="logout"
                   class="relative medium capitalize text-gray-800 font-medium hover:text-primary transition block">
                    logout
                    <span class="absolute -left-8 top-0 text-base">
                            <i class="fas fa-sign-out-alt"></i>
                        </span>
                </a>
            </div>
            <!-- single link end -->
        </div>
        <!-- profile links end -->
    </div>
    <!-- sidebar end -->

    <!-- account content -->
    <div class="col-span-9 shadow rounded px-6 pt-5 pb-7 mt-6 lg:mt-0">
        <form action="changepassword" method="post">
            <h3 class="text-lg font-medium capitalize mb-4">
                Change password
            </h3>
            <div class="space-y-4 max-w-sm">
                <div>
                    <label class="text-gray-600 mb-2 block">
                        Current Password <span class="text-primary">*</span>
                    </label>
                    <div class="relative">
                        <input type="password" class="input-box" name="ancienpassword" placeholder="enter current password" required>
                    </div>
                </div>
                <div>
                    <label class="text-gray-600 mb-2 block">
                        New Password <span class="text-primary">*</span>
                    </label>
                    <div class="relative">

                        <input type="password" class="input-box" name="currentpassword" placeholder="enter new password" required>
                    </div>
                </div>
                <div>
                    <label class="text-gray-600 mb-2 block">
                        Confirm Password <span class="text-primary">*</span>
                    </label>
                    <div class="relative">
                        <input type="password" class="input-box" name="confirmpassword" placeholder="enter confirm password" required>
                    </div>
                </div>
            </div>
            <div class="mt-6">
                <button type="submit"
                        class="px-6 py-2 text-center text-white bg-primary border border-primary rounded hover:bg-transparent hover:text-primary transition uppercase font-roboto font-medium">
                    Save change
                </button>
            </div>
        </form>
    </div>
    <!-- account content end -->
</div>
<!-- account wrapper end -->
<%@include file="footer.jsp"%>

</body>
</html>
