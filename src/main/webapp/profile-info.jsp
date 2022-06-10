<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 6/8/2022
  Time: 3:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                <img src="assets/images/avatar.png" class="rounded-full w-14 h-14 p-1 border border-gray-200 object-cover">
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

                </h4>
            </div>
        </div>
        <!-- account profile end -->

        <!-- profile links -->
        <div class="mt-6 bg-white shadow rounded p-4 divide-y divide-gray-200 space-y-4 text-gray-600">
            <!-- single link -->
            <div class="space-y-1 pl-8">
                <a
                   class="relative text-base font-medium capitalize hover:text-primary transition block">
                    Manage account
                    <span class="absolute -left-8 top-0 text-base">
                            <i class="far fa-address-card"></i>
                        </span>
                </a>
                <a href="profileinfo" class="hover:text-primary transition capitalize block text-primary">Profile information</a>
                <a href="changepassword" class="hover:text-primary transition capitalize block">change password</a>
            </div>
            <!-- single link end -->
            <!-- single link -->
            <div class="space-y-1 pl-8 pt-4">
                <a href="myreservations"
                   class="relative medium capitalize text-gray-800 font-medium hover:text-primary transition block">
                    my réservations
                    <span class="absolute -left-8 top-0 text-base">
                            <i class="fas fa-gift"></i>
                        </span>
                </a>

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
        <form action="profileinfo" method="post">
            <h3 class="text-lg font-medium capitalize mb-4">
                Profile Information
            </h3>
            <div class="space-y-4">
                <div class="grid sm:grid-cols-2 gap-4">
                    <div>
                        <label class="text-gray-600 mb-2 block">
                            First Name
                        </label>
                        <input type="text" class="input-box" name="prenom" value="<c:out value="${prenom}"/>">
                    </div>
                    <div>
                        <label class="text-gray-600 mb-2 block">
                            Last Name
                        </label>
                        <input type="text" class="input-box" name="nom" value="<c:out value="${nom}"/>">
                    </div>
                </div>
                <div class="grid sm:grid-cols-2 gap-4">
                    <div>
                        <label class="text-gray-600 mb-2 block">
                            Cin
                        </label>
                        <input type="text" class="input-box" name="cin" value="<c:out value="${cin}"/>">
                    </div>
                    <div>
                        <label class="text-gray-600 mb-2 block">
                            Ville
                        </label>
                        <input type="text" class="input-box" name="ville" value="<c:out value="${ville}"/>">
                    </div>
                    <div>
                        <label class="text-gray-600 mb-2 block">
                            Pays
                        </label>
                        <input type="text" class="input-box" name="pays" value="<c:out value="${pays}"/>">
                    </div>
                </div>
                <div class="grid sm:grid-cols-2 gap-4">
                    <div>
                        <label class="text-gray-600 mb-2 block">
                            Email Address <span class="text-primary">*</span>
                        </label>
                        <input type="email" name="email" class="input-box" value="<c:out value="${email}"/>" required>
                    </div>
                    <div>
                        <label class="text-gray-600 mb-2 block">
                            Phone Number
                        </label>
                        <input type="text" class="input-box" name="telephone" value="<c:out value="${telephone}"/>">
                    </div>
                </div>
                <div class="grid gap-4">
                    <div>
                        <label class="text-gray-600 mb-2 block">
                            Address
                        </label>
                        <input type="text" name="addresse" class="input-box" value="<c:out value="${addresse}"/>">
                    </div>

                </div>
            </div>
            <div class="mt-6">
                <button type="submit"
                        >
                    <a class="px-6 py-2 text-center text-white bg-primary border border-primary rounded hover:bg-transparent hover:text-primary transition uppercase font-roboto font-medium"
                    >Save change</a>
                </button>
            </div>
        </form>
    </div>
    <!-- account content end -->
</div>
<!-- account wrapper end -->

<!-- form wrapper end -->
<%@include file="footer.jsp"%>

</body>
</html>
