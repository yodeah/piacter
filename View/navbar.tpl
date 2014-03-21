<div id="navigation" class="wrapper">
    <div class="navbar-static-top"> 

        <!--Hidden Header Region-->
        <div class="header-hidden">
            <div class="header-hidden-inner container">
                <div class="row">
                    <div class="col-sm-4 col-md-4">
                        <h3>About Us</h3>
                        <p>Making the web a prettier place one template at a time! We make beautiful, quality, responsive Drupal &amp; web templates!</p>
                        <a href="about.htm" class="btn btn-sm btn-primary">Find out more</a> </div>
                    <div class="col-sm-4 col-md-4"> 
                        <!--@todo: replace with company contact details-->
                        <h3>Contact Us</h3>
                        <address>
                            <p><abbr title="Phone"><i class="fa fa-phone"></i></abbr> 019223 8092344</p>
                            <p><abbr title="Email"><i class="fa fa-envelope"></i></abbr> info@themelize.me</p>
                            <p><abbr title="Address"><i class="fa fa-home"></i></abbr> Sunshine House, Sunville. SUN12 8LU.</p>
                        </address>
                    </div>
                    <div class="col-sm-4 col-md-4"> 
                        <!--Colour Switch for demo - @todo: remove in production-->
                        <div class="colour-switcher">
                            <h3>Theme Colours</h3>
                            <a href="#green" class="green active" data-toggle="tooltip" data-placement="bottom" data-original-title="Green (Default)">Green</a> <a href="#red" class="red" data-toggle="tooltip" data-placement="bottom" data-original-title="Red">Red</a> <a href="#blue" class="blue" data-toggle="tooltip" data-placement="bottom" data-original-title="Blue">Blue</a>
                            <p>Cookies are NOT enabled so colour selection is not persistent.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Header & Branding region-->
        <div class="header">
            <div class="header-inner container">
                <div class="row">
                    <div class="col-md-8"> 
                        <!--branding/logo--> 
                        <a class="navbar-brand" href="index" title="Home">
                            <h1><span>Piac</span>tér<span>.</span></h1>
                        </a>
                        <div class="slogan">blabla bla</div>
                    </div>

                    <!--header rightside-->
                    <div class="col-md-4"> 
                        <!--social media icons-->
                        <div class="social-media"> 
                            <!--@todo: replace with company social media details--> 
                            <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> </div>
                    </div>
                </div>
                <div id="header-hidden-link"> <a href="#" title="Click me you'll get a surprise" class="show-hide" data-toggle="show-hide" data-target=".header-hidden"><i></i>Open</a> </div>
            </div>
        </div>

        <!--Change order for full width navbar
      <div class="navbar"> 
        <div class="container" data-toggle="clingify">-->
        <div class="js-clingify-placeholder" style="height: 61px;"><div class="js-clingify-wrapper"><div class="container" data-toggle="clingify">
                    <div class="navbar"> 
                        <!--
                      mobile collapse menu button
                      - data-toggle="toggle" = default BS menu
                      - data-toggle="jpanel-menu" = jPanel Menu
                        --> 
                        <a class="navbar-btn" data-toggle="jpanel-menu" data-target=".navbar-collapse"> <span class="bar"></span> <span class="bar"></span> <span class="bar"></span> <span class="bar"></span> </a> 

                        <!--user menu-->
                        <div class="btn-group user-menu pull-right"> <a href="{{ @signinstatuslink4 }}" class="btn btn-primary signup" data-toggle="modal">{{ @signinstatus4 }}</a> <a href="{{ @signinstatuslink3 }}" class="btn btn-primary dropdown-toggle login" data-toggle="modal">{{ @signinstatus3 }}</a> </div>

                        <!--everything within this div is collapsed on mobile-->
                        <div class="navbar-collapse collapse"> 

                            <!--main navigation-->
                            <ul class="nav navbar-nav">
                                <li class="home-link"><a href="index"><i class="fa fa-home"></i><span class="hidden">Home</span></a></li>
                                
                                <li><a href="{{ @signinstatuslink }}">{{ @signinstatus }}</a></li>
                                <!--<li><a href="#">{{ @signinstatuslink }}</a></li>
                                <li><a href="#">{{ @signinstatus2 }}</a></li>-->
                                <li><a href="{{ @signinstatuslink2 }}">{{ @signinstatus2 }}</a></li>
                                
                                
                                <form class="navbar-form navbar-left" role="search" method="get" action="search">
                                    <div class="form-group">
                                        <input type="text" name="searchbox" class="form-control" placeholder="Search">
                                        <input type="hidden" name="page" value="1">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Keresés</button>
                                </form>

                            </ul>
                        </div>
                        <!--/.navbar-collapse --> 
                    </div>
                </div></div></div>
    </div>
</div>  <!--/navbarvége --> 