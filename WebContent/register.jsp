<%@page import="controller.UserController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	UserController mUserController = new UserController();
	if(request.getParameter("register") != null){
		boolean isRegister = mUserController.register(request.getParameter("username"), request.getParameter("email"), request.getParameter("password"), request.getParameter("repassword"));
	
		HttpSession Session = request.getSession();
		Session.setAttribute("isRegister", isRegister);
		System.out.print(Session.getAttribute("isRegister"));
	}
%>

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
    <!-- END nav -->
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('source/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-10 col-sm-12 ftco-animate text-center">
              <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Reservation</span></p>
              <h1 class="mb-3">Register</h1>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
        <div class="row no-gutters justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2>Register</h2>
            <%
            	if(session.getAttribute("isRegister") == null && request.getParameter("register") != null){
            		%>
            		<div class="alert alert-warning" role="alert">
					  Register Fails!
					</div>
            		<%
            	}else if (session.getAttribute("isRegister") != null && request.getParameter("register") != null){
            		%>
            		<div class="alert alert-primary" role="alert">
					  Register Successfully, Please login!
					</div>
            		<%
            	}
            %>
			
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 ftco-animate img" style="background-image: url(source/images/bg_1.jpg);"></div>
          <div class="col-md-8 ftco-animate makereservation p-5 bg-light">
            <form action="#" method="post">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Name</label>
                    <input type="text" name="username" class="form-control" placeholder="Your Name" required>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Email</label>
                    <input type="text" name="email" class="form-control" placeholder="Your Email" required>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Password</label>
                    <input type="Password" name="passowrd" class="form-control" placeholder="Your Password" required>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="">Re-Password</label>
                    <input type="Password" name="repassword" class="form-control" placeholder="Retry Your Password" required>
                  </div>
                </div>
                <div class="col-md-12 mt-3">
                  <div class="form-group">
                    <input type="submit" name="register" value="Register" class="btn btn-primary py-3 px-5">
                  </div>
                </div>
              </div>
            </form>
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