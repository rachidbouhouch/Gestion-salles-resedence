<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 6/4/2022
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp"%>
<div class="tour container">
    <div class="tour-head">
        <div class="tour-head-left">
            <div class="tour-title">
                Best of Turkey: Istanbul, Fethiye, Cappadocia
            </div>
            <div class="tour-overview">
                <div class="tour-overview-item"><span>9</span> days</div>
                <div class="tour-overview-item">
                    <span class="material-icons-outlined"> star </span>
                    <span>4.7</span>
                </div>
            </div>
        </div>
    </div>
    <!-- tour head -->

    <div class="tour-wrapper">
        <div class="tour-content">
            <div class="tour-hero">
                <div class="tour-image"></div>
            </div>
            <!-- tour hero -->
            <!-- block -->

            <div class="tour-content-block">
                <div class="tour-content-title">Picures of rooms</div>
                <div class="tour-places">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="swiper-image">
                                    <img
                                            src="assets/images/tour-istanbul.jpeg"
                                            alt="image"
                                    />
                                </div>
                                <div class="swiper-title">Istanbul</div>
                            </div>
                            <div class="swiper-slide">
                                <div class="swiper-image">
                                    <img
                                            src="assets/images/tour-gallipoli.jpeg"
                                            alt="image"
                                    />
                                </div>
                                <div class="swiper-title">Gallipoli</div>
                            </div>
                            <div class="swiper-slide">
                                <div class="swiper-image">
                                    <img
                                            src="assets/images/tour-troy.jpeg"
                                            alt="image"
                                    />
                                </div>
                                <div class="swiper-title">Troy</div>
                            </div>
                            <div class="swiper-slide">
                                <div class="swiper-image">
                                    <img
                                            src="assets/images/tour-kusadasi.jpeg"
                                            alt="image"
                                    />
                                </div>
                                <div class="swiper-title">Kusadasi</div>
                            </div>
                            <div class="swiper-slide">
                                <div class="swiper-image">
                                    <img
                                            src="assets/images/tour-fethiye.jpeg"
                                            alt="image"
                                    />
                                </div>
                                <div class="swiper-title">Fethiye</div>
                            </div>
                            <div class="swiper-slide">
                                <div class="swiper-image">
                                    <img
                                            src="assets/images/tour-oludeniz.jpeg"
                                            alt="image"
                                    />
                                </div>
                                <div class="swiper-title">Oludeniz</div>
                            </div>
                            <div class="swiper-slide">
                                <div class="swiper-image">
                                    <img
                                            src="assets/images/tour-dalyan.jpeg"
                                            alt="image"
                                    />
                                </div>
                                <div class="swiper-title">Dalyan</div>
                            </div>
                            <div class="swiper-slide">
                                <div class="swiper-image">
                                    <img
                                            src="assets/images/tour-cappadocia.jpeg"
                                            alt="image"
                                    />
                                </div>
                                <div class="swiper-title">Cappadocia</div>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- content -->

        <div class="tour-sidebar">
            <div class="tour-receipt">
                <div class="tour-receipt-head">
                    <div class="tour-amount">
                        $109
                        <span>/night</span>
                    </div>

                </div>
                <div class="tour-receipt-select">
                    <div class="tour-receipt-select-top">
                        <div class="tour-receipt-select-item">
                            <div class="tour-receipt-select-icon">
                              <span class="material-icons-outlined">
                                 calendar_month
                              </span>
                            </div>
                            <div class="tour-receipt-select-content">
                                <div class="tour-receipt-select-title">
                                    07 May
                                </div>
                                <div class="tour-receipt-select-text">
                                    Check in
                                </div>
                            </div>
                        </div>
                        <div class="tour-receipt-select-item">
                            <div class="tour-receipt-select-icon">
                              <span class="material-icons-outlined">
                                 event_available
                              </span>
                            </div>
                            <div class="tour-receipt-select-content">
                                <div class="tour-receipt-select-title">
                                    16 May
                                </div>
                                <div class="tour-receipt-select-text">
                                    Check out
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tour-receipt-select-bottom">
                        <div class="tour-receipt-select-item">
                            <div class="tour-receipt-select-icon">
                              <span class="material-icons-outlined">
                                 person_outline
                              </span>
                            </div>
                            <div class="tour-receipt-select-content">
                                <div class="tour-receipt-select-title">
                                    3 Guests
                                </div>
                                <div class="tour-receipt-select-text">Guests</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tour-receipt-detail">
                    <div class="tour-receipt-detail-item">
                        <div class="tour-receipt-detail-title">
                            $119 x 9 nights
                        </div>
                        <div class="tour-receipt-detail-price">$1,071</div>
                    </div>
                    <div
                            class="tour-receipt-detail-item tour-receipt-detail-total"
                    >
                        <div class="tour-receipt-detail-title">Total</div>
                        <div class="tour-receipt-detail-price">$1,246</div>
                    </div>
                </div>
                <div class="tour-receipt-button">
                    <button class="tour-favorite">
                        <span class="material-icons-outlined">
                           favorite_border
                        </span>
                    </button>
                    <button class="tour-reserve">Book Now</button>
                </div>
            </div>
        </div>
        <!-- sidebar -->
    </div>
</div>
<!-- tour -->

<%@include file="footer.jsp"%>

</body>
</html>
