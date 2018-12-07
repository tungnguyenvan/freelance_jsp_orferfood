<%@page import="java.util.ArrayList"%>
<%@page import="model.CardModel"%>
<%@page import="java.util.List"%>
<%@page import="controller.CardController"%>
<%@page import="utils.Contracts"%>
<%@page import="model.UsersModel"%>
<%@page import="controller.UserController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
	List<CardModel> carts = new ArrayList();
	if(Contracts.USER != null){
		CardController mCardController = new CardController();
		System.out.print(Contracts.USER.getId());
		carts = mCardController.index(Contracts.USER.getId());
	}
%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <a class="navbar-brand" href="index.jsp">Tasty</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="register.jsp" class="nav-link">Register</a></li>
            <li class="nav-item">
            <%
            if(Contracts.USER != null){
            	%>
            	<button type="button" class="btn btn nav-link"">
				  <a href="cart.jsp"><%=Contracts.USER.getUserName() %><span class="badge badge-light"><%=carts.size() %></span></a> 
				</button>
            	<%
            }else{
            	%>
            	<button type="button" class="btn btn nav-link">
				  <a href="login.jsp"><span class="badge badge-light">Login</span></a>
				</button>
            	<%
            }
            %>
            
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->
</body>
</html>