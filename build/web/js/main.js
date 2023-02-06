(function ($) {
    "use strict";

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();
    // Initiate the wowjs
    new WOW().init();
    
    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.sticky-top').css('top', '0px');
        } else {
            $('.sticky-top').css('top', '-100px');
        }
    });
    
      
   
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });


    // Header carousel
    $(".header-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1500,
        items: 1,
        dots: true,
        loop: true,
        nav : true,
        navText : [
            '<i class="bi bi-chevron-left"></i>',
            '<i class="bi bi-chevron-right"></i>'
        ]
    });


    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1000,
        center: true,
        margin: 24,
        dots: true,
        loop: true,
        nav : false,
        responsive: {
            0:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            }
        }
    });
    
    function IsEmail(email) {
            var regex =
/^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (!regex.test(email)) {
                return false;
            }
            else {
                return true;
            }
        }
    
    
   $("#buttonlogin").click(function() {
			$.ajax({
				type : 'GET',
				url : '${pageContext.request.contextPath }/ajax',
				success : function(result) {
					$('#result').html(result);
				}
			});
		});
    
    // NewsLetter
   $("#newsletterbtn").click(function(){
       
       var email = $('#email').val();
       email = $.trim(email);
       if (email.length ===0) swal( "Oops" ,  "Enter Email Address" ,  "error" );
       else if(!IsEmail(email)) swal( "Oops" ,  "Enter Valid Email " ,  "error" );
       else{
        $.ajax({
              url: 'newsletter',
              method: 'POST',
              data: {
                 email: email
              },
              success: function(){
                  swal("Subscribed!", "You have Subscribed for Newsletters !", "success");
                  $('#email').val("");
              },
              error: function (jqXHR, exception) {
                 swal ( "Oops" ,  "Something went wrong!" ,  "error" );
              }
              
           });
        
       }
    
  });
  
    
})(jQuery);



