<%@page import="model.FoodsModel"%>
<%@page import="controller.FoodsController"%>
<%@page import="utils.Contracts"%>
<%@page import="model.CardModel"%>
<%@page import="java.util.List"%>
<%@page import="controller.CardController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<%
	int total = 0;
	boolean isDelete = false;
	CardController mCardController = new CardController();
	List<CardModel> carts = mCardController.index(Contracts.USER.getId());
	FoodsController mFoodsController = new FoodsController();
	
	if(request.getParameter("delete") != null){
		isDelete = mCardController.remove(Integer.parseInt(request.getParameter("fooddelete")));
	}

%>
<html lang="en">
  <head>
    <title>Tasty - Free Bootstrap 4 Template by Colorlib</title>
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
              <h1 class="mb-3">Your Cart</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('source/images/bg_2.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Your Cart</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('source/images/bg_3.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center text-center">
            <div class="col-md-10 col-sm-12 ftco-animate">
              <h1 class="mb-3">Your Cart</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END slider -->

    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-12 dish-menu">
			<%
			if(isDelete && request.getParameter("delete") != null){
				%>
				<div class="alert alert-primary" role="alert">
				  Delete item Successfully!
				</div>
				<%
			}
			%>
            <div class="tab-content py-5" id="v-pills-tabContent">
              <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
              <h1 class="mb-3">Your Cart</h1>
                <div class="row">
                  <div class="col-lg-6">
                  <%
                  	for (int i = 0; i < carts.size(); i++){
                  		if(i == carts.size()/2){
                  			%>
                  			</div>
                  			<div class="col-lg-6">
                  			<%
                  		}
                  		FoodsModel model = mFoodsController.get(carts.get(i).getIdFood());
                  		total += model.getPrice();
                  		%>
                  		<div class="menus d-flex ftco-animate">
	                      <div class="menu-img" style="background-image: url(source/images/<%=model.getImage()%>);"></div>
	                      <div class="text d-flex">
	                        <div class="one-half">
	                        <form action="#" method="post">
	                        <button type="submit" name="delete" class="close" aria-label="Close">
							  <span aria-hidden="true">&times;</span>
							</button>
							<input name="fooddelete" value="<%=model.getId() %>" type="hidden">
							</form>
	                          <h3><%=model.getName() %></h3>
	                          <p><%=model.getDescription() %></p>
	                        </div>
	                        <div class="one-forth">
	                          <span class="price"></span>
	                        </div>
	                      </div>
	                    </div>	
                  		<%
                  	}
                  %>
                      </div>
                    </div>
                  </div>
                </div>
              </div><!-- END -->
            </div>
          </div>
        </div>
      </div>
      <div class="form-group col-lg-12">
        <label for="">Your Address</label>
        <input type="text" class="form-control" placeholder="Your address">
      </div>
      <div class="col-lg-12">
        <button style="height: 80px" type="button" class="btn btn-primary btn-lg btn-block">Total for you : <%=total %></button>
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