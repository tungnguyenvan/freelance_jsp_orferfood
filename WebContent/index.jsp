
<%@page import="utils.Contracts"%>
<%@page import="model.FoodsModel"%>
<%@page import="java.util.List"%>
<%@page import="controller.FoodsController"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	FoodsController mFoodsController = new FoodsController();
	List<FoodsModel> foods = mFoodsController.index();
	List<FoodsModel> specials = mFoodsController.special();
%>
<html lang="en">
  <head>
    <title>Order Foods</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">

    <link rel="stylesheet" href="source/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="source/css/animate.css">
    
    <link rel="stylesheet" href="source/css/owl.carousel.min.css">
    <link rel="stylesheet" href="source/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="source/css/magnific-popup.css">

    <link rel="stylesheet" href="source/css/aos.css">

    <link rel="stylesheet" href="source/css/ionicons.min.css">

    <link rel="stylesheet" href="source/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="source/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="source/css/flaticon.css">
    <link rel="stylesheet" href="source/css/icomoon.css">
    <link rel="stylesheet" href="source/css/style.css">
  </head>
  <body>
    
  	<jsp:include page="header.jsp"></jsp:include>
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('source/images/bg_1.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Book a table for yourself at a time convenient for you</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('source/images/bg_2.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Tasty &amp; Delicious Food</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('source/images/bg_3.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Book a table for yourself at a time convenient for you</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END slider -->

    <div class="ftco-section-reservation">
      <div class="container">
        <div class="row">
        </div>
      </div>
    </div>

     <section class="ftco-section-2">
      <div class="container d-flex">
      </div>
    </section>

    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <span class="subheading">Our Menu</span>
            <h2>Discover Our Exclusive Menu</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 dish-menu">

            <div class="nav nav-pills justify-content-center ftco-animate" id="v-pills-tab" role="tablist" aria-orientation="vertical">
              <a class="nav-link py-3 px-4 active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true"><span class="flaticon-meat"></span> Fash food</a>
              <a class="nav-link py-3 px-4" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false"><span class="flaticon-cutlery"></span> Dessert</a>
              <a class="nav-link py-3 px-4" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false"><span class="flaticon-cheers"></span> Drinks</a>
            </div>

            <div class="tab-content py-5" id="v-pills-tabContent">
              <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                <div class="row">
                  <div class="col-lg-6">
                  <%
                  for(int i = 0; i < foods.size(); i++){
                	  if ( i == foods.size() /2){
                		  %>
                		  </div>
                		  <div class="col-lg-6">
                		  <%
                	  }
                  %>
                  	<a href="show.jsp?id=<%=foods.get(i).getId()%>">
                	  <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/<%=foods.get(i).getImage()%>);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3><%=foods.get(i).getName() %></h3>
                          <p><%=foods.get(i).getDescription() %></p>
                        </div>
                        <div class="one-forth">
                          <span class="price"><%=foods.get(i).getPrice() %> VND</span>
                        </div>
                      </div>
                    </div>
                    </a>
                  <%
                  }
                  %>
                  </div>
                </div>
              </div><!-- END -->

              <

              <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                <div class="row">
                  <div class="col-lg-6">
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/drink-1.jpg);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3>Lemon Juice</h3>
                          <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">$29</span>
                        </div>
                      </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/drink-2.jpg);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3>Guava Juice</h3>
                          <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">$29</span>
                        </div>
                      </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/drink-3.jpg);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3>Sprite</h3>
                          <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">$29</span>
                        </div>
                      </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/drink-4.jpg);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3>Cola</h3>
                          <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">$29</span>
                        </div>
                      </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/drink-5.jpg);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3>Wine</h3>
                          <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">$29</span>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-lg-6">
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/drink-6.jpg);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3>Beer</h3>
                          <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">$29</span>
                        </div>
                      </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/drink-7.jpg);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3>Mango Juice</h3>
                          <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">$29</span>
                        </div>
                      </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/drink-8.jpg);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3>Apple Juice</h3>
                          <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">$29</span>
                        </div>
                      </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/drink-9.jpg);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3>Strawberry Juice</h3>
                          <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">$29</span>
                        </div>
                      </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                      <div class="menu-img" style="background-image: url(source/images/drink-10.jpg);"></div>
                      <div class="text d-flex">
                        <div class="one-half">
                          <h3>Orange Juice</h3>
                          <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                        </div>
                        <div class="one-forth">
                          <span class="price">$29</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section parallax-img" style="background-image: url('source/images/bg_3.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2>Our Specialties</h2>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section bg-light">
      <div class="container special-dish">
        <div class="row d-flex no-gutters">
          <div class="col-lg-6">
          <%
          	for(int i = 0; i < specials.size(); i++){
          		if(i == specials.size() / 2){
          			%>
          			</div>
          			<div class="col-lg-6">
          			<%
          		}
          		%>
          		  <div class="block-3 d-md-flex ftco-animate">
	              <div class="image order-last" style="background-image: url(source/images/<%=specials.get(i).getImage()%>);"></div>
	              <div class="text text-center order-first">
	                <h2 class="heading"><%=specials.get(i).getName() %></h2>
	                <p><%=specials.get(i).getDescription() %></p>
	                <span class="price">from <%=specials.get(i).getPrice() %></span>
	              </div>
	            </div>
          		<%
          	}
          %>
          </div>
        </div>
      </div>
    </section>
    <section class="instagram">
      <div class="container-fluid">
        <div class="row no-gutters justify-content-center pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2><span>Instagram</span></h2>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-sm-12 col-md ftco-animate">
            <a href="source/images/insta-1.jpg" class="insta-img image-popup" style="background-image: url(source/images/insta-1.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="source/images/insta-2.jpg" class="insta-img image-popup" style="background-image: url(source/images/insta-2.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="source/images/insta-3.jpg" class="insta-img image-popup" style="background-image: url(source/images/insta-3.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="source/images/insta-4.jpg" class="insta-img image-popup" style="background-image: url(source/images/insta-4.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="source/images/insta-5.jpg" class="insta-img image-popup" style="background-image: url(source/images/insta-5.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>

    <jsp:include page="footer.jsp"></jsp:include>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="source/js/jquery.min.js"></script>
  <script src="source/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="source/js/popper.min.js"></script>
  <script src="source/js/bootstrap.min.js"></script>
  <script src="source/js/jquery.easing.1.3.js"></script>
  <script src="source/js/jquery.waypoints.min.js"></script>
  <script src="source/js/jquery.stellar.min.js"></script>
  <script src="source/js/owl.carousel.min.js"></script>
  <script src="source/js/jquery.magnific-popup.min.js"></script>
  <script src="source/js/aos.js"></script>
  <script src="source/js/jquery.animateNumber.min.js"></script>
  <script src="source/js/bootstrap-datepicker.js"></script>
  <script src="source/js/jquery.timepicker.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="source/js/google-map.js"></script>
  <script src="source/js/main.js"></script>
    
  </body>
</html>