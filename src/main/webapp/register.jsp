<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Bảo hiểm xã hội</title>

    <!-- slider stylesheet -->
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Dosis:400,600,700|Poppins:400,600,700&display=swap"
          rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="css/responsive.css" rel="stylesheet" />

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box;}

        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #04AA6D;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>



</head>

<body class="sub_page">
<div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
        <div class="container">
            <nav class="navbar navbar-expand-lg custom_nav-container">
                <a class="navbar-brand" href="index.jsp">
                    <img style="border-radius: 50%" src="images/bhxh.png" alt="" />
                    <div style="margin-left: 30px">
                        <div>Giao dịch điện tử</div>
                        <div>Bảo hiểm xã hội</div>
                    </div>
                </a>
                <div class="contact_nav" id="">
                    <ul class="navbar-nav ">
                        <li class="nav-item">
                            <a class="nav-link" href="">
                                <img src="images/location.png" alt="" />
                                <span>Vị trí</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="service.html">
                                <img src="images/call.png" alt="" />
                                <span>+ 01 1234567890</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="service.html">
                                <img src="images/envelope.png" alt="" />
                                <span>demo@gmail.com</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>

    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section position-relative">
        <div class="container">
            <div class="custom_nav2">
                <nav class="navbar navbar-expand-lg custom_nav-container ">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <div class="d-flex  flex-column flex-lg-row align-items-center">
                            <ul class="navbar-nav  ">



                                <c:choose>
                                    <c:when test="${not empty sessionScope.user}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">${sessionScope.user.fullname}</a>
                                        </li>
                                    </c:when>
                                </c:choose>

                                <li class="nav-item ">
                                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                                </li>

                                <c:choose>
                                    <c:when test="${empty sessionScope.user}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="login.jsp">Login</a>
                                        </li>
                                    </c:when>
                                </c:choose>


                                <c:choose>
                                    <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="insurance">Tính bảo hiểm và đóng tiền</a>
                                        </li>
                                    </c:when>
                                </c:choose>

                                <c:choose>
                                    <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="register.jsp">Khai báo thông tin</a>
                                        </li>
                                    </c:when>
                                </c:choose>



                                <%--                  <li class="nav-item">--%>
                                <%--                    <a class="nav-link" href="service.html">Services </a>--%>
                                <%--                  </li>--%>

                                <%--                  <c:choose>--%>
                                <%--                    <c:when test="${not empty sessionScope.user}">--%>
                                <%--                      <li class="nav-item">--%>
                                <%--                        <a class="nav-link" href="#">${sessionScope.user.fullname}</a>--%>
                                <%--                      </li>--%>
                                <%--                    </c:when>--%>
                                <%--                    <c:otherwise>--%>
                                <%--                      <li class="nav-item">--%>
                                <%--                        <a class="nav-link" href="login.jsp">Login</a>--%>
                                <%--                      </li>--%>
                                <%--                    </c:otherwise>--%>
                                <%--                  </c:choose>--%>

                                <%--                    <li class="nav-item">--%>
                                <%--                    <a class="nav-link" href="login.html">Login</a>--%>
                                <%--                  </li>--%>
                                <c:choose>
                                    <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="register.jsp">Đăng kí người dùng</a>
                                        </li>
                                    </c:when>
                                </c:choose>
                                <%--                  <li class="nav-item">--%>
                                <%--                    <a class="nav-link" href="#">Contract</a>--%>
                                <%--                  </li>--%>




                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </section>
    <!-- end slider section -->
</div>

<!-- contact section -->
<section class="contact_section layout_padding">
    <div class="container">
        <div class="heading_container">
            <h2>
          <span>
                <c:choose>
                    <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                        Khai báo thông tin
                    </c:when>
                    <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                       Đăng kí tài khoản cho người dùng
                    </c:when>
                </c:choose>
          </span>
            </h2>
        </div>
        <div class="layout_padding2-top">
            <div class="row">
                <div class="col-md-6 ">
                    <div class="container">
                        <c:choose>
                            <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                <form action="update" method="post">
                            </c:when>
                            <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                                <form action="user" method="post">
                            </c:when>
                        </c:choose>
<%--                        <form action="user" method="post">--%>
                            <p>${message}</p>
                            <c:choose>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                    <label for="fname">Họ tên</label>
                                    <input type="text" id="fname" name="fullname" placeholder="Full name ..." value="${sessionScope.user.fullname}">
                                </c:when>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                                    <label for="fname">Họ tên</label>
                                    <input type="text" id="fname" name="fullname" placeholder="Full name ...">
                                </c:when>
                            </c:choose>


                            <c:choose>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                    <label for="phone">Số điện thoại</label>
                                    <input type="text" id="phone" name="phoneNumber" placeholder="Phone number ..." value="${sessionScope.user.phoneNumber}">
                                </c:when>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                                    <label for="phone">Số điện thoại</label>
                                    <input type="text" id="phone" name="phoneNumber" placeholder="Phone number ...">
                                </c:when>
                            </c:choose>


                            <c:choose>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                    <label for="birth">Ngày sinh</label>
                                    <input type="text" id="birth" name="birthDay" placeholder="Birth day ..." value="${sessionScope.user.birthday}">
                                </c:when>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                                    <label for= "birth"> Ngày sinh   </label>
                                    <input type="text" id="birth" name="birthDay" placeholder="Birth day ...">
                                </c:when>
                            </c:choose>


                            <c:choose>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                    <label for="username">Tên đăng nhập</label>
                                    <input type="text" id="username" name="username" placeholder="Username ..." value="${sessionScope.user.username}" readonly>
                                </c:when>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                                    <label for="username">Tên đăng nhập</label>
                                    <input type="text" id="username" name="username" placeholder="Username ...">
                                </c:when>
                            </c:choose>



                            <c:choose>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                    <label for="password">Mật khẩu</label>
                                    <input type="password" id="password" name="password" placeholder="Password ..." value="${sessionScope.user.password}">
                                </c:when>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                                    <label for="password">Mật khẩu</label>
                                    <input type="password" id="password" name="password" placeholder="Password ...">
                                </c:when>
                            </c:choose>


                            <c:choose>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                    <label for="salary">Tiền lương </label>
                                    <input type="number" id="salary" name="salary" placeholder="Salary ..." value=${sessionScope.user.salary}>
                                </c:when>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                                    <label for="salary">Tiền lương </label>
                                    <input type="number" id="salary" name="salary" placeholder="Salary ...">VNĐ
                                </c:when>
                            </c:choose>


                            <c:choose>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                    <label for="identification">CMND/CCCD</label>
                                    <input type="text" id="identification" name="identification" placeholder="Identification ..." value="${sessionScope.user.citizen}" readonly>
                                </c:when>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                                    <label for="identification">CMND/CCCD</label>
                                    <input type="text" id="identification" name="identification" placeholder="Identification ...">
                                </c:when>
                            </c:choose>




                            <c:choose>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 0}">
                                    <label for="domestic">Kiểu người lao động</label>
                                    <select id="domestic" name="domestic">

                                        <c:choose>
                                            <c:when test="${sessionScope.user.domestic == 1 }">
                                                <option value="1" readonly>Người lao động nước ngoài</option>
                                            </c:when>
                                            <c:when test="${sessionScope.user.domestic == 0 }">
                                                <option value="0" readonly="">Người lao động trong nước</option>
                                            </c:when>
                                        </c:choose>
                                    </select>
                                </c:when>
                                <c:when test="${not empty sessionScope.user and sessionScope.user.role == 1}">
                                    <label for="domestic">Kiểu người lao động</label>
                                    <select id="domestic" name="domestic">
                                        <option value="1">Người lao động nước ngoài</option>
                                        <option value="0">Người lao động trong nước</option>
                                    </select>
                                </c:when>
                            </c:choose>



                            <input type="submit" value="Submit" onclick="this.disabled=true;this.value='Submitting...';this.form.submit();" >
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="map_container">
                        <div class="map-responsive">
                            <iframe
                                    src="https://img.lovepik.com/photo/50055/7611.jpg_wh860.jpg"
                                    width="600" height="300" frameborder="0" style="border:0; width: 100%; height:100%"
                                    allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end contact section -->


<!-- info section -->


<!-- footer section -->

<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>

<script>
    function openNav() {
        document.getElementById("myNav").classList.toggle("menu_width");
        document
            .querySelector(".custom_menu-btn")
            .classList.toggle("menu_btn-style");
    }
</script>
</body>

</html>