<%@page import="elib.book.Cart"%>
<%@page import="elib.book.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>ShopNest Cart</title>
		<link rel="stylesheet" href="styles.css">
	</head>
	<body>
		
		<%
				Cart c=(Cart)session.getAttribute("cart"); 
					List itemsList=c.getItems();
				%>
			
		
		
		<header>
			<h1>ShopNest Cart</h1>
			<nav>
			  <ul>
			    <li>
			    	 
			    </li>
			  </ul>
			</nav>

		</header>
		
	
		
		<main>
			<%
			for(int i=0; i<itemsList.size(); i++) {
						String p=((Book)(itemsList.get(i))).getPname();
			%>
			<section class="product">
				<h2><%=p%></h2>
				<p><%=((Book)(itemsList.get(i))).getPprice()%></p>
				<span class="price">Test</span>
			</section>
			<%
				  }                              
			%>
			
			
		</main>
		
		<br>
		<table id="totalamt">
				<tfoot>
		            <tr>
		                <td colspan="3">Total:</td>
		           
		                <td><h3><%= c.getTotal() %></h3></td>
		                
		            </tr>
		        </tfoot>
 
		</table>
		<a href="buy.html"><button>Buy Now</button></a>
	</body>
	
</html>
