<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 6/4/2022
  Time: 10:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp"%>
<!-- breadcrum -->
<div class="container py-4 flex justify-between">
    <div class="flex gap-3 items-center">
        <a href="#" class="text-primary text-base">
            <i class="fas fa-home"></i>
        </a>
        <span class="text-sm text-gray-400"><i class="fas fa-chevron-right"></i></span>
        <p class="text-gray-600 font-medium">Rooms</p>
    </div>
</div>
<!-- breadcrum end -->

<!-- shop wrapper -->
<div class="container grid lg:grid-cols-4 gap-6 pt-4 pb-16 items-start relative">
    <!-- sidebar -->
    <div
            class="col-span-1 bg-white px-4 pt-4 pb-6 shadow rounded overflow-hidden absolute lg:static left-4 top-16 z-10 w-72 lg:w-full lg:block">
        <div class="divide-gray-200 divide-y space-y-5 relative">
            <!-- price filter -->
            <div class="pt-4">
                <h3 class="text-xl text-gray-800 mb-3 uppercase font-medium">Date</h3>
                <div class="mt-4 flex items-center">
                    <input type="date"
                           class="w-full border-gray-300 focus:ring-0 focus:border-primary px-3 py-1 text-gray-600 text-sm shadow-sm rounded"
                           placeholder="min">

                </div>
                <div class="mt-4 flex items-center">
                    <input type="date"
                           class="w-full border-gray-300 focus:ring-0 focus:border-primary px-3 py-1 text-gray-600 text-sm shadow-sm rounded"
                           placeholder="mix">
                </div>
                <div class="mt-4 flex items-center">
                    <a href="shop.html" class="bg-primary border border-primary text-white px-6 py-2 ml-4 font-medium rounded-md uppercase hover:bg-transparent hover:text-primary transition">
                        search
                    </a></div>
            </div>
            <!-- price filter end -->
        </div>
    </div>
    <!-- sidebar end -->

    <!-- products -->
    <div class="col-span-3">
        <!-- sorting -->
        <div class="mb-4 flex items-center">
            <button
            class="bg-primary border border-primary text-white px-10 py-3 font-medium rounded uppercase hover:bg-transparent hover:text-primary transition lg:hidden text-sm mr-3 focus:outline-none">
            Filter
            </button>
            <select
                    class="w-44 text-sm text-gray-600 px-4 py-3 border-gray-300 shadow-sm rounded focus:ring-primary focus:border-primary">
                <option>Default sorting</option>
                <option>Price low-high</option>
                <option>Price high-low</option>
                <option>Latest product</option>
            </select>
            <div class="flex gap-2 ml-auto">
                <div
                        class="border border-primary w-10 h-9 flex items-center justify-center text-white bg-primary rounded cursor-pointer">
                    <i class="fas fa-th"></i>
                </div>
                <div
                        class="border border-gray-300 w-10 h-9 flex items-center justify-center text-gray-600 rounded cursor-pointer">
                    <i class="fas fa-list"></i>
                </div>
            </div>
        </div>
        <!-- sorting end -->
        <c:forEach var="chambre" items="${chambres}" varStatus="satus">

                <!-- product wrapper -->
                <div class="grid lg:grid-cols-2 xl:grid-cols-3 sm:grid-cols-2 gap-6">
                    <!-- single product -->
                    <div class="group rounded bg-white shadow overflow-hidden">
                        <!-- product image -->
                        <div class="relative">
                            <img src="assets/images/<c:out value="${chambre.getImagePath()}"></c:out>" class="w-full">
                            <div
                                    class="absolute inset-0 bg-black bg-opacity-40 flex items-center justify-center gap-2 opacity-0 group-hover:opacity-100 transition">
                                <a href="view.html"
                                   class="text-white text-lg w-9 h-9 rounded-full bg-primary hover:bg-gray-800 transition flex items-center justify-center">
                                    <i class="fas fa-search"></i>
                                </a>
                            </div>
                        </div>
                        <!-- product image end -->
                        <!-- product content -->
                        <div class="pt-4 pb-3 px-4">
                            <a href="view.html">
                                <h4 class="uppercase font-medium text-xl mb-2 text-gray-800 hover:text-primary transition">
                                    Guyer chair
                                </h4>
                            </a>

                                <div class="flex space-x-2" style="cursor: auto;">

        <span class="inline-flex items-center leading-none px-2.5 py-1.5 text-sm font-medium text-skin-inverted rounded-full border border-skin-input" style="cursor: auto;">

          <svg class="mr-1.5 h-2 w-2 brand-react" fill="currentColor" viewBox="0 0 8 8">

            <circle cx="4" cy="4" r="3"></circle>

          </svg>
Persons : <c:out value="${chambre.getNombrePersonne()}"></c:out>
        </span>

                                    <span class="inline-flex items-center leading-none px-2.5 py-1.5 text-sm font-medium text-skin-inverted rounded-full border border-skin-input" style="cursor: auto;">

          <svg class="mr-1.5 h-2 w-2 brand-packages" fill="currentColor" viewBox="0 0 8 8">

            <circle cx="4" cy="4" r="3"></circle>

          </svg>
Beds : <c:out value="${chambre.getNombreLit()}"></c:out>
        </span>

                                </div>


                            <div class="flex items-baseline mb-1 space-x-2">
                                <p class="text-xl text-primary font-roboto font-semibold"><c:out value="${chambre.getPrixParjour()}"></c:out> DH</p>
                                <p class="text-sm text-gray-400 font-roboto ">/day</p>
                            </div>
                            <div class="flex items-center">
                                <div class="flex gap-1 text-sm text-yellow-400">
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                    <span><i class="fas fa-star"></i></span>
                                </div>
                                <div class="text-xs text-gray-500 ml-3">(150)</div>
                            </div>
                        </div>
                        <!-- product content end -->
                        <!-- product button -->
                        <a href="#"
                           class="block w-full py-1 text-center text-white bg-primary border border-primary rounded-b hover:bg-transparent hover:text-primary transition">
                            Book Now
                        </a>
                        <!-- product button end -->
                    </div>
                    <!-- single product end -->
                </div>
                <!-- product wrapper end -->
        </c:forEach>


    </div>
    <!-- products end -->

</div>
<!-- shop wrapper end -->
<%@include file="footer.jsp"%>

</body>
</html>
