<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
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
                <li class="nav-item ">
                  <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
<%--                <li class="nav-item">--%>
<%--                  <a class="nav-link" href="about.html">About </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                  <a class="nav-link" href="service.html">Services </a>--%>
<%--                </li>--%>
                <li class="nav-item active">
                  <a class="nav-link" href="login.html">Login</a>
                </li>
<%--                <li class="nav-item">--%>
<%--                  <a class="nav-link" href="#">Contract</a>--%>
<%--                </li>--%>
              </ul>
              <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
              </form>
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
            ACCOUNT LOGIN
          </span>
      </h2>
    </div>
    <div class="layout_padding2-top">
      <div class="row">
        <div class="col-md-6 ">
          <form action="login" method="post">
            <div class="contact_form-container">
              <div>
                <div>
                  <input type="text" placeholder="Username" name="username"/>
                </div>
                <div>
                  <input type="password" placeholder="Password" name="password"/>
                </div>
                <div>
                  <p>${error}</p>
                </div>
                <!--                  <div>-->
                <!--                    <input type="text" placeholder="Phone Number" />-->
                <!--                  </div>-->
                <!--                  <div class="mt-5">-->
                <!--                    <input type="text" placeholder="Message" />-->
                <!--                  </div>-->
                <div class="mt-5">
                  <button type="submit">
                    Send
                  </button>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="col-md-6">
          <div class="map_container">
            <div class="map-responsive">
              <iframe
                      src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=Eiffel+Tower+Paris+France"
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

<!-- end info section -->


<!-- footer section -->
<section class="container-fluid footer_section ">
  <p>
    &copy; 2019 All Rights Reserved. Design by
    <a href="https://html.design/">Free Html Templates</a>
  </p>
</section>
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