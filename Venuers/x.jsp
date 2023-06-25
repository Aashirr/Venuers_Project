<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="com.connection.*" %>
        <%@ page import="java.sql.*" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Shirts</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                    crossorigin="anonymous">
                <link rel='stylesheet'
                    href='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css'>
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                <link href="css/styles.css" rel="stylesheet" />
                <style>
                    .col-md-7 {
                        margin: auto;
                    }

                    .dropdown:hover>.dropdown-menu {
                        display: block;
                    }

                    .dropdown:hover {
                        font-weight: bold;
                    }

                    .paina {
                        text-align: center;
                        background-color: black;
                        color: white;
                    }

                    .nav-item:hover {
                        /* background-color: #6c757d; */
                        font-weight: bold;
                    }

                    body {
                        background-color: rgb(202 206 235);
                    }

                    .dropdown-item:hover {
                        font-weight: bold;
                        color: rgb(110, 122, 212);


                    }

                    @media (max-width: 767px) {
                        .card {
                            display: flex;
                            flex-wrap: row;

                        }


                    }
                </style>
            </head>

            <body>
                <div class="paina" id="paina">
                    FREE SHIPPING ALL OVER INDIA | EARN LOYALTY POINTS WITH EVERY ORDER
                </div>
                <jsp:include page="headernav.jsp"></jsp:include>
                <div class="row">
                    <div class="col-md-7">
                        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                                    class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                    aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                    aria-label="Slide 3"></button>
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3"
                                    aria-label="Slide 4"></button>
								<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4"
                                    aria-label="Slide 5"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="https://www-whattowearonvacation-com.exactdn.com/wp-content/uploads/2019/09/Mens-fashion-tips-for-Italy.jpg?strip=all&lossy=1&resize=1000%2C600&ssl=1"
                                        class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item" >
			                        <img src="https://images.indianexpress.com/2019/10/girl-fashion.jpg" class="d-block w-100"
			                            alt="...">			
			                    </div>
			                    <div class="carousel-item">
			                        <img src="https://a-gentlemans-row.com/wp-content/uploads/2022/05/mens-chinos.png"
			                        class="d-block w-100" alt="...">                        
			                    </div>
			                    <div class="carousel-item">
			                        <img src="https://image-marketing.s3.ap-south-1.amazonaws.com/wp-content/uploads/2020/09/05213051/13.-Kanjeevaram-Silk-Saree.jpg"
			                            class="d-block w-100" alt="...">			
			                    </div>
			                    <div class="carousel-item" >
			                        <img src="https://securecdn.pymnts.com/wp-content/uploads/2019/11/Shoe-Bank-sharing-economy-eCommerce-retail.jpg" class="d-block w-100" alt="...">
			                    </div>			                
			                    <div class="carousel-item">
			                        <img src="https://5.imimg.com/data5/CX/HX/MY-66779071/image1-1000x1000.jpg"
			                            class="d-block w-100" alt="...">
			                    </div>    
			                     <div class="carousel-item">
			                        <img src="https://prettyprogressive.com/wp-content/uploads/2022/03/xMzRvflCVESgm71b94Nl7IL03pMKHGYa1647964525.jpg"
			                            class="d-block w-100" alt="...">
			                    </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
                <br>
                <form action="AddToCart" method="post">
                    <% 
                    String whereStr =  "where product_category=\""+request.getParameter("product_category")+"\"";
                    if (!request.getParameter("product_type").equals("*")){
                    	whereStr += "AND product_type=\""+request.getParameter("product_type")+"\"";
                    }
                    ResultSet retriveProduct=DatabaseConnection.getResultFromSqlQuery("select * from tblproduct "+whereStr);%>
                        <div class="shirt-heading" style="padding-left: 10px;">
                            <h3 class="cas-shirts-heading">
                                <%=request.getParameter("product_category") %>&nbsp;
                                    <%= (!request.getParameter("product_type").equals("*"))?request.getParameter("product_type"):"" %>
                            </h3>
                        </div>
                        <br>

                        <div class="container marketing">
                            <!-- Three columns of text below the carousel -->
                            <div class="row row-cols-2 row-cols-md-4 g-4">
                                <% while (retriveProduct.next()) { %>

                                    <div class="col">
                                        <div class="card h-200">
                                            <input type="hidden" name="productId" value="<%=retriveProduct.getInt("id")%>">
                                            <input type="hidden" name="price" value="<%=retriveProduct.getString("price")%>">
                                            <input type="hidden" name="mrp_price" value="<%=retriveProduct.getString("mrp_price")%>">
                                            <img src="uploads/<%=retriveProduct.getString("image_name")%>"
                                            class="card-img-top" alt="..." width="350" height="420">
                                            <div class="card-body">
                                                <h5 class="card-title">
                                                    <%=retriveProduct.getString("name")%>
                                                </h5>
                                                <p class="card-text">Rs.<%=retriveProduct.getString("price")%>
                                                </p>
                                                <input type="submit" value="Add to cart"
                                                    class="btn btn-outline-danger btn-sm"
                                                    onclick="return confirm('Are you sure, you want to add this item in cart?');">
                                            </div>
                                        </div>
                                    </div>
                                    <% } %>

                            </div>
                        </div>
                </form>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                    crossorigin="anonymous"></script>
            </body>

            </html>