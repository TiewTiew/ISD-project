<!DOCTYPE html>
<html>

<head>
    <link rel=stylesheet href="themes/style.css" type="text/css">
    <link rel=stylesheet href="themes/slideshow.css" type="text/css">
    <link rel=stylesheet href="themes/flexslider.css" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script src="themes/jquery.flexslider.js"></script>
    <script type="text/javascript" charset="utf-8">
               $(window).load(function() {
              $('.flexslider').flexslider({
                animation: "slide"
              });
            });
    </script>

    <jsp:useBean id="member" class="model.Member" scope="session"></jsp:useBean>
    <% if (member.getPosition().equals("Member") || member.getPosition().equals("Guest")) { %>
    <style>
        a[href=viewmember] {
            display : none;
        }
        a[href=event] {
            display : none;
        }
    </style>
    <% } %>
</head>

<body class="home">
    <div class="topnav" id="myTopnav">
        <div class="logo">
            <a href="homepage.jsp"><img src="pictures/Logo.png"></a>
        </div>
        <div class="dropdown">
            <a href="viewmember" class="dropbtn">Members</a>
            <div class="dropdown-content">
                <a href="viewmember">Manage Member</a>
                <a href="addmember.jsp">Add Member</a>
            </div>
        </div>
        <div class="dropdown">
            <a href="viewevent" class="dropbtn">Event</a>
            <div class="dropdown-content">
                <a href="viewevent">Event List</a>
                <a href="event">Add Event</a>  
            </div>
        </div>
        <div class="dropdown">
        <a href="aboutus.jsp" class="dropbtn">About Us</a>
    </div>
    <div class="dropdown">
        <a href="faq.jsp" class="dropbtn">FAQ</a>
    </div>
        <div class="right">
        <% if (member.getPosition().equals("Guest")) {%>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
         <% } else { %>
            <a href="editprofile.jsp">Profile</a>
            <a href="logout">Logout</a>
        <% } %>
        </div>
    </div>

    <div class="content" style="line-height: 1.5;">
        
        <section class="intro">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <img src="pictures/Logo.png" style="display:block;overflow:hidden;float:left;">
                        <h3 style="display:block;overflow:hidden;">sdfsdaff</h3>
                    </div>
                </div>
            </div>
                <div class="main-intro">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <p>Gaming is love. </p>
                            <p>Gaming is life.</p>
                            <p>The One And Only TARUC Gaming Society!</p>
                            <div style="font-size:60px;line-height:60px;text-align: center;margin: 50px 0;">Let The Fun Begin!</div>
                            <a href="login.jsp">
                                <img src="pictures/join.png" style="width:250px;padding-bottom: 100px;">
                            </a>
                        </div>
                    </div>
                </div>
        </section>
        
        <section class="tarc">
            <h4>Brought To You By</h4>
            <img src="pictures/tarc-logo.png">
        </section>
        
        <section class="homeabout">
            <div class="wrapper">
                <h2>About</h2>
                <p>
                    <strong>Gaming is Love. Gaming is Life. </strong>
                <p>
                <p>
                    <strong>TARUC's very own Gaming Society!</strong>
                </p>
                <p>
                    Experience the best of gaming scene in one society!
                </p>
                <p>
                    Organized by passionate gamer's of TARUC to bring the best experience to our members!
                </p>

                <p>
                    <strong><span>TARUC Gaming Society</span></strong> will feature events such as: Gaming Education, Gaming Career, E-sports, LAN Party, Tabletop Gaming and so much more! 
                </p>
                <p>
                    Join us and let the games begin!
                </p>
            </div>
        </section>

        
        <section class="activities">
        <p><span style="font-size: 30px; font-weight: 500;">Activities Include:</span></p>
        <div class="flexslider">
          <ul class="slides">
            <li>
                <div class="slide1">
                    <div class="tag pink-bg">
                        <img src="pictures/Logo.png">
                        <p>ESports Tournaments</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="slide2">
                    <div class="tag pink-bg">
                        <img src="pictures/Logo.png" class="goto-lan-party">
                        <p class="goto-lan-party">Lan Party</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="slide3">
                    <div class="tag pink-bg">
                        <img src="pictures/Logo.png">
                        <p>Gaming Education Workshop</p>
                    </div>
                </div>
            </li>

            <li>
                <div class="slide4">
                    <div class="tag pink-bg">
                        <img src="pictures/Logo.png">
                        <p>Gaming Career</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="slide5">
                    <div class="tag pink-bg">
                        <img src="pictures/Logo.png">
                        <p>And So Much More!</p>
                    </div>
                </div>
            </li>
          </ul>
        </div>
        </section>


        
        <section class=register>
            <div class="wrapper">
            <p>
                Don't miss this chance to be part of our amazing community!
            </p>
            <a href="login.jsp">
                <img src="pictures/register.png" style="width: 200px;">
            </a>
            </div>
        </section>
            
        <section class="socialmedia">
            <div class="wrapper">
                <p>Follow Us at </p>
                <a href="https://www.facebook.com/taruc.igs/" target="_blank" style="color: white; text-decoration: none;">
                    <img src="pictures/fblogo.png" style="width: 20px;">
                    <span>TARUC Gaming Society</span>
                </a>
            </div>    
        </section>
        

        
    </div>
    <button onclick="topFunction()" id="go-top" title="Go to top">Back to top &#8593;</button>


    <footer>TARUC Gaming Society<sup>&reg;</sup></footer>
    <script src="themes/jquery.slideshow.js"></script>

</body>
</html>