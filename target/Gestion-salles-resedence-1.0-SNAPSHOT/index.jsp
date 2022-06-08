<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp"%>

<!-- banner -->
<div class="bg-cover bg-no-repeat bg-center py-36 relative" style="background-image: url('assets/images/banner-bg.jpg')">
    <div class="container">
        <!-- banner content -->
        <h1 class="xl:text-6xl md:text-5xl text-4xl text-gray-800 font-medium mb-4">
            Best Collection For <br class="hidden sm:block"> Home Decoration
        </h1>
        <p class="text-base text-gray-600 leading-6">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa <br class="hidden sm:block">
            assumenda aliquid inventore nihil laboriosam odio
        </p>
        <!-- banner button -->
        <div class="mt-12">
            <form method="post" action="searchchambre">
            <input type="text"
                   name="checkin"
                   placeholder="Check In"
                   onfocus="(this.type='date')"
                   required
                   class="bg-primary border border-primary text-white placeholder-white px-8 py-3 font-medium rounded-md uppercase">
            <input type="text"
                   name="checkout"
                   placeholder="Check Out"
                   onfocus="(this.type='date')"
                   required
                   class="bg-primary border border-primary placeholder-white text-white px-8 py-3 font-medium rounded-md uppercase">
            <select
                    class="bg-primary border border-primary text-white px-8 py-3 font-medium rounded-md uppercase"
                    name="numberofpersons"
                    required
            >

                <option disabled selected>Numbers of Persons</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4+">4+</option>
            </select>
            <button type="submit" class="bg-primary border border-primary text-white px-8 py-3 ml-4 font-medium rounded-md uppercase hover:bg-transparent hover:text-primary transition">
                book now
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
    <div class="grid lg:grid-cols-3 sm:grid-cols-2 gap-3 content-center">
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

<!-- top new arrival -->
<div class="container pb-16">
    <h2 class="text-2xl md:text-3xl font-medium text-gray-800 uppercase mb-6">top new arrival</h2>
    <!-- product wrapper -->
    <div class="grid lg:grid-cols-4 sm:grid-cols-2 gap-6">
        <!-- single product -->
        <div class="group rounded bg-white shadow overflow-hidden">
            <!-- product image -->
            <div class="relative">
                <img src="assets/images/products/product9.jpg" class="w-full">
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
                <div class="flex items-baseline mb-1 space-x-2">
                    <p class="text-xl text-primary font-roboto font-semibold">$45.00</p>
                    <p class="text-sm text-gray-400 font-roboto line-through">$55.00</p>
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
                Add to Cart
            </a>
            <!-- product button end -->
        </div>
        <!-- single product end -->

    </div>
    <!-- product wrapper end -->
</div>
<!-- top new arrival end -->

<%@include file="footer.jsp"%>

</body>
</html>
