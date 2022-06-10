<%@ page import="com.example.gestionsallesresedence.Models.Chambre" %>
<%@ page import="com.example.gestionsallesresedence.Dao.DaoChambre" %>
<%@ page import="com.example.gestionsallesresedence.Dao.DaoChambreImpl" %><%--
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
<div class="py-4 container flex gap-3 items-center ">
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
                <a href="profileinfo" class="hover:text-primary transition capitalize block">Profile information</a>
                <a href="changepassword" class="hover:text-primary transition capitalize block">change password</a>
            </div>
            <!-- single link end -->
            <!-- single link -->
            <div class="space-y-1 pl-8 pt-4">
                <a href="myreservations"
                   class="relative medium capitalize text-primary font-medium hover:text-primary transition block">
                    my reservations
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
    <div class="col-span-9 mt-6 lg:mt-0 space-y-4 h-screen">
        <!-- single reservations -->
      <c:forEach var="reservation" items="${myreservations}" varStatus="satus">
        <div
                class="flex items-center md:justify-between gap-4 md:gap-6 p-4 border border-gray-200 rounded flex-wrap md:flex-nowrap">
            <!-- cart image -->
            <div class="w-28 flex-shrink-0">
                <img src="assets/images/reservation-icon-3.png"  class="w-full">
            </div>
            <!-- cart image end -->
            <!-- cart content -->
            <div class="md:w-1/3 w-full">
                <h2 class="text-gray-800 mb-1 xl:text-xl textl-lg font-medium uppercase">
                    ROOM #${reservation.getIdChambre()}
                </h2>
                <p class="text-gray-500 text-sm">Numbre of personns: <span class="text-green-600">${reservation.getNombrePersonne()}</span></p>
                <p class="text-gray-500 text-sm">Numbre of night: <span class="text-green-600">${reservation.getDuree()}</span></p>
                <p class="text-gray-500 text-sm">date of reservation  <span class="text-green-600">${reservation.getDateDebut()}</span></p>

            </div>
            <!-- cart content end -->
            <div class="">
                <p class="text-primary text-lg font-semibold">${reservation.getPriceTotal()} DH</p>
            </div>
            <div class="text-gray-600 hover:text-primary cursor-pointer">
                <i class="fas fa-trash"></i>
            </div>
        </div>
        <!-- single reservation end -->
</c:forEach>
    </div>
    <!-- account content end -->
</div>
<!-- account wrapper end -->

<%@include file="footer.jsp"%>

</body>
</html>
