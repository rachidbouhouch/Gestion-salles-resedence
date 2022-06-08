<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 6/4/2022
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- footer -->
<div class="bg-gray-800 py-4">
    <div class="container flex items-center justify-between">
        <div class="space-y-8 xl:col-span-1">
            <img class="w-20" src="assets/images/logoBlanche.png" alt="Company name">
        </div>
        <div class="flex space-x-6">
            <a href="#" class="text-gray-400 hover:text-gray-500">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="#" class="text-gray-400 hover:text-gray-500">
                <i class="fab fa-twitter"></i>
            </a>
            <a href="#" class="text-gray-400 hover:text-gray-500">
                <i class="fab fa-instagram"></i>
            </a>
            <a href="#" class="text-gray-400 hover:text-gray-500">
                <i class="fab fa-linkedin-in"></i>
            </a>
        </div>
    </div>
</div>
<!-- footer end -->
<script>
    let menuBar = document.querySelector('#menuBar')
    let mobileMenu = document.querySelector('#mobileMenu')
    let closeMenu = document.querySelector('#closeMenu')

    menuBar.addEventListener('click', function(){
        mobileMenu.classList.remove('hidden')
    })

    closeMenu.addEventListener('click', function(){
        mobileMenu.classList.add('hidden')
    })
</script>
<script src="https://cdn.jsdelivr.net/npm/swiper@8.0.7/swiper-bundle.min.js"></script>
<script src="assets/js/app.js"></script>