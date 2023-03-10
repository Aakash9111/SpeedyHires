<!DOCTYPE html>
<html lang="en">
    <%
     String username = (String) session.getAttribute("username");
     String cuser =(String) session.getAttribute("cuser");
 
            boolean Islogin = false;
            boolean company = false;
            if(username!=null)
            {
                Islogin = true;
            }
            if(cuser=="1"){
               company=true;
            }
            
    %>
<head>
    <meta charset="utf-8">
    <title>Speedy Hires</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <!--    Alert Stylesheet-->
     <link href="css/sweetalert.min.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="index.jsp" class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
                <h1 class="m-0 text-primary">Speedy Hires</h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                     <%
                    if(Islogin)
                    {                                                                       
                    %>
                    <a href="LogoutServlet" class="nav-item nav-link">Logout</a>
                    <%
                    }
                    %>
                    <a href="index.jsp" class="nav-item nav-link">Home</a>
                    <a href="about.jsp" class="nav-item nav-link">About</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Jobs</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="job-list.jsp" class="dropdown-item">Job List</a>
                            <a href="job-detail.jsp" class="dropdown-item active">Job Detail</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="category.jsp" class="dropdown-item">Job Category</a>
                            <a href="testimonial.jsp" class="dropdown-item">Testimonial</a>
                            <a href="404.jsp" class="dropdown-item">404</a>
                        </div>
                    </div>
                    <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                </div>
                <a href="" class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">Post A Job<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->


        <!-- Header End -->
        <div class="container-xxl py-5 bg-dark page-header mb-5">
            <div class="container my-5 pt-5 pb-4">
                <h1 class="display-3 text-white mb-3 animated slideInDown">Job Detail</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb text-uppercase">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Pages</a></li>
                        <li class="breadcrumb-item text-white active" aria-current="page">Surya Software Systems Freshers Recruitment</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Header End -->


        <!-- Job Detail Start -->
        <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row gy-5 gx-4">
                    <div class="col-lg-8">
                        <div class="d-flex align-items-center mb-5">
                            <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-2.jpg" alt="" style="width: 80px; height: 80px;">
                            <div class="text-start ps-4">
                                <h3 class="mb-3">Software Development Engineer</h3>
                                <span class="text-truncate me-3"><i class="fa fa-map-marker-alt text-primary me-2"></i>Bangalore,India</span>
                                <span class="text-truncate me-3"><i class="far fa-clock text-primary me-2"></i>Full Time</span>
                                <span class="text-truncate me-0"><i class="far fa-money-bill-alt text-primary me-2"></i>Rs. 6,00,000/- per annum</span>
                            </div>
                        </div>

                        <div class="mb-5">
                            <h4 class="mb-3">Job description</h4>
                            <p>
                                <h6>what we?re looking for:</h6>
                                
                                <ul class="list-unstyled">
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>An unwavering attention to detail and care towards your work. Suryans double-check PRs they submit for review.</li>
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>Each variable name is thought through in detail; attention is paid towards how decisions made today will affect the future.</li>
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>An absolute commitment towards doing the best work of your life, while helping others to do the same.</li>
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>We deliver with utmost focus on the job at hand. The team works towards crafting the best products for our users, and customers.</li>
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>Working as a team, Suryans go above and beyond when it results in a better end product.</li>
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>You should be comfortable working in an agile environment.</li>
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>You are also expected to participate in code reviews?both receiving and offering them as needed. </li>
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>You are needed to communicate flexibly with your team ? pitching in on designs, features and ideas for the product, wherever needed.</li>
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>You should be open to receiving and providing constructive feedback, with a relentless pursuit of constant improvement.</li>
                                </ul>
                             <h4>What You Will Work On:</h4>
                                 <ul class="list-unstyled">
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>The specific project you work on is decided based on the list of available projects at the time.</li>
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>While what you work on will change over time, we assure you that you?ll work with people who care deeply about their work and deliver with great attention to detail.</li>
                                 </ul>
                                 <h4>Your Growth at Surya:</h4>
                                 <ul class="list-unstyled">
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>Surya?s growth is driven by ordinary people who have extraordinary dreams and are bold enough to pursue them.</li>
                                     <li><i class="fa fa-angle-right text-primary me-2"></i>Our leadership team, including our Managing Director, is composed primarily of people who joined Surya as freshers.</li>
                                    <li><i class="fa fa-angle-right text-primary me-2"></i>Through our process of continuous feedback, and regular 1-1 conversations, we believe in upskilling our team, and enabling each of them to grow along paths they find satisfying.</li>
                                 </ul> 
                           </p>
                            <h4 class="mb-3">Technologies We Work With:</h4>
                            <p>Magna et elitr diam sed lorem. Diam diam stet erat no est est. Accusam sed lorem stet voluptua sit sit at stet consetetur, takimata at diam kasd gubergren elitr dolor</p>
                            <ul class="list-unstyled">
                                
                                <li><i class="fa fa-angle-right text-primary me-2"></i><strong>Mobile Apps:</strong> iOS (Swift), Android (Kotlin), Futter.</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i><strong>Web Applications:</strong> JavaScript (React JS, Vue JS, Ember JS), Python (Django, Flask), Java (Play, Spring Boot).</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i><strong>Web Services:</strong> Kotlin, Rust, C#.</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i><strong>Data Processing:</strong> Rust.</li>
                            </ul>
                        </div>
        
                        <div class="">
                            <h4 class="mb-4">Apply For The Job</h4>
                            <form>
                                <div class="row g-3">
                                    <div class="col-12 col-sm-6">
                                        <input type="text" class="form-control" placeholder="Your Name">
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="email" class="form-control" placeholder="Your Email">
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="text" class="form-control" placeholder="Portfolio Website">
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="file" class="form-control bg-white">
                                    </div>
                                    <div class="col-12">
                                        <textarea class="form-control" rows="5" placeholder="Coverletter"></textarea>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="submit">Apply Now</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
        
                    <div class="col-lg-4">
                        <div class="bg-light rounded p-5 mb-4 wow slideInUp" data-wow-delay="0.1s">
                            <h4 class="mb-4">Job Summery</h4>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Published On: 07 December, 2022</p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Vacancy: 50 Position</p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Job Nature: Full Time</p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Salary: Rs. 6,00,000/- per annum</p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Location: Bangalore,India</p>
                            <p class="m-0"><i class="fa fa-angle-right text-primary me-2"></i>Date Line: 30 December, 2022</p>
                        </div>
                        <div class="bg-light rounded p-5 wow slideInUp" data-wow-delay="0.1s">
                            <h4 class="mb-4">Company Detail</h4>
                            <p class="m-0">Ipsum dolor ipsum accusam stet et et diam dolores, sed rebum sadipscing elitr vero dolores. Lorem dolore elitr justo et no gubergren sadipscing, ipsum et takimata aliquyam et rebum est ipsum lorem diam. Et lorem magna eirmod est et et sanctus et, kasd clita labore.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Job Detail End -->


        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Company</h5>
                        <a class="btn btn-link text-white-50" href="about.jsp">About Us</a>
                        <a class="btn btn-link text-white-50" href="contact.jsp">Contact Us</a>
                        <a class="btn btn-link text-white-50" href="services.jsp">Our Services</a>
                        <a class="btn btn-link text-white-50" href="privacypolicy.jsp">Privacy Policy</a>
                        <a class="btn btn-link text-white-50" href="termsandcondition.jsp">Terms & Condition</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Quick Links</h5>
                        <a class="btn btn-link text-white-50" href="about.jsp">About Us</a>
                        <a class="btn btn-link text-white-50" href="contact.jsp">Contact Us</a>
                        <a class="btn btn-link text-white-50" href="services.jsp">Our Services</a>
                        <a class="btn btn-link text-white-50" href="privacypolicy.jsp">Privacy Policy</a>
                        <a class="btn btn-link text-white-50" href="termsandcondition.jsp">Terms & Condition</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Contact</h5>
                        <a class="text-white-50" href="contact.jsp">
                            <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                            </a>
                            <a class="text-white-50" href="contact.jsp">
                            <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                            </a>
                            <a class="text-white-50" href="contact.jsp" >
                            <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
                            </a>
                            <div class="d-flex pt-2">
                                <a target="_blank" class="btn btn-outline-light btn-twitter" href="http://twitter.com"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" class="btn btn-outline-light btn-facebook" href="http://facebook.com"><i class="fab fa-facebook-f"></i></a>
                                <a target="_blank" class="btn btn-outline-light btn-youtube" href="http://youtube.com"><i class="fab fa-youtube"></i></a>
                                <a target="_blank" class="btn btn-outline-light btn-linkedin" href="http://linkedin.com"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Newsletter</h5>
                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            
                            <input id="email" class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="submit" id="newsletterbtn" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Speedy Hires</a>, All Right Reserved. 
							
							<!--/*** This template is free as long as you keep the footer author?s credit link/attribution link/backlink. If you'd like to use the template without the footer author?s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a class="border-bottom" href="">Quencil-It-Solutions</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="index.jsp">Home</a>
                                <a href="cookies.jsp">Cookies</a>
                                <a href="help.jsp">Help</a>
                                <a href="faq.jsp">FQAs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->




        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <!--     Alert Javascript-->
     <script src="js/sweetalert.min.js"></script>
</body>

</html>