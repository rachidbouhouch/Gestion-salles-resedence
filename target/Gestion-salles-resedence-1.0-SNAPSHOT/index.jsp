<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp"%>

<!-- banner -->
<div class="bg-cover bg-no-repeat bg-center py-36 relative" style="background-image: url('assets/images/banner-bg.jpg')">
    <div class="container">
        <!-- banner content -->
        <h1 class="xl:text-6xl md:text-5xl text-4xl text-gray-800 font-medium  mb-4">
            GET YOU RESERVE <br class="hidden text-primary sm:block"> NOW
        </h1>
        <!-- banner button -->
        <div class="mt-12">
            <form method="post" action="searchchambre">
            <input type="text"
                   name="checkin"
                   placeholder="Check In"
                   onfocus="(this.type='date')"
                   required
                   class="bg-primary border border-primary text-white placeholder-white px-8 py-3 font-medium rounded-md uppercase">
            <input type="number"
                   name="nbrnuits"
                   placeholder="Nombre de nuits"
                   min="1"
                   required
                   class="bg-primary border border-primary placeholder-white text-white px-8 py-3 font-medium rounded-md uppercase">
            <button type="submit">
               <a class="bg-primary border border-primary text-white px-8 py-3 ml-4 font-medium rounded-md uppercase hover:bg-transparent hover:text-primary transition"> search</a>
            </button>
            </form>
        </div>
        <!-- banner button end -->
        <!-- banner content end -->
    </div>
</div>
<!-- banner end -->

<!-- categories -->
<div class="container pb-16 py-16">
    <h2 class="text-2xl md:text-3xl font-medium text-gray-800 uppercase mb-6">Category</h2>
    <div class="grid lg:grid-cols-3 sm:grid-cols-2 gap-3 place-items-center">
        <!-- single category -->
        <div class="relative group rounded-sm overflow-hidden">
            <img src="assets/images/SingleRoom.png" class="w-full">
            <a href="listchambreSingle" class="absolute inset-0 bg-black bg-opacity-40 group-hover:bg-opacity-50 flex items-center justify-center text-xl text-white
                    font-roboto font-medium tracking-wide transition">
                Single Room
            </a>
        </div>
        <!-- single category end -->
        <!-- single category -->
        <div class="relative group rounded-sm overflow-hidden">
            <img src="assets/images/familyRoom.jpg" class="w-full">
            <a href="listchambreFamily" class="absolute inset-0 bg-black bg-opacity-40 group-hover:bg-opacity-50 flex items-center justify-center text-xl text-white
                    font-roboto font-medium tracking-wide transition">
                Family Room
            </a>
        </div>
        <!-- single category end -->

    </div>
</div>
<!-- categories end -->
<%@include file="footer.jsp"%>

</body>
</html>
