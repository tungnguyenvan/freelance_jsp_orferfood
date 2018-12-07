<%@page import="utils.Contracts"%>
<%@page import="controller.CardController"%>
<%@page import="model.FoodsModel"%>
<%@page import="controller.FoodsController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	boolean isAdd = false;
	FoodsController mFoodsController = new FoodsController();
	String id = request.getParameter("id");
	FoodsModel model = mFoodsController.get(Integer.parseInt(id));
	if(request.getParameter("cart") != null && Contracts.USER != null){
		CardController mCardController = new CardController();
		isAdd =	mCardController.store(Contracts.USER.getId(), Integer.parseInt(id));
	}
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!DOCTYPE html>
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
    <section class="parallax-img" style="background-image: url(source/images/<%=model.getImage()%> %>);" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2><%=model.getName() %></h2>
            <%
            	if(isAdd && request.getParameter("cart") != null){
            	%>
            	<div class="alert alert-primary" role="alert">
				  Added To Cart!
				</div>
            	<%
            	}else if(isAdd = false && request.getParameter("cart") != null){
            		%>
            		<div class="alert alert-primary" role="alert">
					  Add To Cart Fails, Please try again!
					</div>
            		<%
            	}else if (Contracts.USER == null && request.getParameter("cart") != null){
            		%>
            		<div class="alert alert-primary" role="alert">
					  You need login, Please try again!
					</div>
            		<%
            	}
            %>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section bg-light">
      <div class="container special-dish">
        <div class="row d-flex no-gutters">
          <div class="col-lg-6">
            <div class="block-3 d-md-flex ftco-animate" style="height: 500px;
    width: max-content;     margin: auto;">
              <div class="image order-last" style="background-image: url(source/images/<%=model.getImage()%>);"></div>
              <div class="text text-center order-first" style="wi">
                <h2 class="heading"><%=model.getName() %></h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts</p>
                <span class="price">from <%=model.getPrice() %></span>
                <a href="?id=<%=model.getId() %>&cart=<%=model.getId() %>" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart
        </a>
   			     </form>
              </div>
            </div>
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
</body>
</html>