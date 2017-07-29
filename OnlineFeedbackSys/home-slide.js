$(window).load(function() {
    $(function() {
        $("ul.dropdown li").hover(function() {
            $(this).addClass("hover");
            $('ul:first', this).css('visibility', 'visible');
        }, function() {
            $(this).removeClass("hover");
            $('ul:first', this).css('visibility', 'hidden');
        });

        // $("ul.dropdown li ul li:has(ul)").find("a:first").append(" &raquo; ");
        $("ul.dropdown li ul li:has(ul)").find("a").addClass("show-3level");
    });


   //SPOTLIGHT Random show//
   // var ran = Math.floor(Math.random() * ($("#c-spot-hd-4 div").length - 2)) + 1;
   // $("#c-spot-hd-4 div:nth-child(" + ran + ")").show();

    //SPOTLIGHT //
    $('#spotlight-1').removeClass('spotlight-1').addClass('');
    $('#spotlight-2').removeClass('spotlight-2').addClass('');
    $('#spotlight-3').removeClass('spotlight-3').addClass('');
    $('#spotlight-4').removeClass('spotlight-4').addClass('');

    $("#spotlight-1").mouseenter(
		function() {
		    $("#updates-container-wrapper").mouseenter(
				function() {
				    $('#spotlight-1-content').stop();
				    $('#spotlight-1-content').removeClass('spotlight-slideup-1').addClass('');
				    $('#c-spot-hd-1').removeClass('c-spot-hd-bg').addClass('');
				    $('#spotlight-1-content').animate({ height: '124px' }, 300);
				});

		    $("#footer-container-wrapper").mouseenter(
				function() {
				    $('#spotlight-1-content').stop();
				    $('#spotlight-1-content').removeClass('spotlight-slideup-1').addClass('');
				    $('#c-spot-hd-1').removeClass('c-spot-hd-bg').addClass('');
				    $('#spotlight-1-content').animate({ height: '124px' }, 300);
				});

		    $('#spotlight-1-content').removeClass('').addClass('spotlight-slideup-1');
		    $('#c-spot-hd-1').removeClass('').addClass('c-spot-hd-bg');
		    $('#spotlight-1-content').animate({ height: '245px' }, 500, function() { $('#spotlight-1-content').removeClass('').addClass('spotlight-slideup-1'); });
		});

    $("#spotlight-1-content").mouseleave(
		function() {
		    $('#spotlight-1-content').animate({ height: '124px' }, 400, function() { $('#c-spot-hd-1').removeClass('c-spot-hd-bg').addClass(''); $('#spotlight-1-content').removeClass('spotlight-slideup-1').addClass(''); });
		});

    $("#spotlight-2").mouseenter(
		function() {
		    $("#updates-container-wrapper").mouseenter(
				function() {
				    $('#spotlight-2-content').stop();
				    $('#spotlight-2-content').removeClass('spotlight-slideup-2').addClass('');
				    $('#c-spot-hd-2').removeClass('c-spot-hd-bg').addClass('');
				    $('#spotlight-2-content').animate({ height: '124px' }, 300);
				});

		    $("#footer-container-wrapper").mouseenter(
				function() {
				    $('#spotlight-2-content').stop();
				    $('#spotlight-2-content').removeClass('spotlight-slideup-2').addClass('');
				    $('#c-spot-hd-2').removeClass('c-spot-hd-bg').addClass('');
				    $('#spotlight-2-content').animate({ height: '124px' }, 300);
				});

		    $('#spotlight-2-content').removeClass('').addClass('spotlight-slideup-2');
		    $('#c-spot-hd-2').removeClass('').addClass('c-spot-hd-bg');
		    $('#spotlight-2-content').animate({ height: '245px' }, 500, function() { $('#spotlight-2-content').removeClass('').addClass('spotlight-slideup-2'); });
		});


    $("#spotlight-2-content").mouseleave(
		function() {
		    $('#spotlight-2-content').animate({ height: '124px' }, 400, function() { $('#c-spot-hd-2').removeClass('c-spot-hd-bg').addClass(''); $('#spotlight-2-content').removeClass('spotlight-slideup-2').addClass(''); });
		});


    $("#spotlight-3").mouseenter(
		function() {
		    $("#updates-container-wrapper").mouseenter(
				function() {
				    $('#spotlight-3-content').stop();
				    $('#spotlight-3-content').removeClass('spotlight-slideup-3').addClass('');
				    $('#c-spot-hd-3').removeClass('c-spot-hd-bg').addClass('');
				    $('#spotlight-3-content').animate({ height: '124px' }, 300);
				});

		    $("#footer-container-wrapper").mouseenter(
				function() {
				    $('#spotlight-3-content').stop();
				    $('#spotlight-3-content').removeClass('spotlight-slideup-3').addClass('');
				    $('#c-spot-hd-3').removeClass('c-spot-hd-bg').addClass('');
				    $('#c-spot-hd-3').removeClass('c-spot-hd-bg').addClass('');
				    $('#spotlight-3-content').animate({ height: '124px' }, 300);
				});

		    $('#spotlight-3-content').removeClass('').addClass('spotlight-slideup-3');
		    $('#c-spot-hd-3').removeClass('').addClass('c-spot-hd-bg');
		    $('#spotlight-3-content').animate({ height: '245px' }, 500, function() { $('#spotlight-3-content').removeClass('').addClass('spotlight-slideup-3'); });
		});


    $("#spotlight-3-content").mouseleave(
		function() {
		    $('#spotlight-3-content').animate({ height: '124px' }, 400, function() { $('#c-spot-hd-3').removeClass('c-spot-hd-bg').addClass(''); $('#spotlight-3-content').removeClass('spotlight-slideup-3').addClass(''); });
		});


    $("#spotlight-4").mouseenter(
		function() {
		    $("#updates-container-wrapper").mouseenter(
				function() {
				    $('#spotlight-4-content').stop();
				    $('#spotlight-4-content').removeClass('spotlight-slideup-4').addClass('');
				    $('#c-spot-hd-4').removeClass('c-spot-hd-bg').addClass('');
				    $('#spotlight-4-content').animate({ height: '124px' }, 300);
				});

		    $("#footer-container-wrapper").mouseenter(
				function() {
				    $('#spotlight-4-content').stop();
				    $('#spotlight-4-content').removeClass('spotlight-slideup-4').addClass('');
				    $('#c-spot-hd-4').removeClass('c-spot-hd-bg').addClass('');
				    $('#spotlight-4-content').animate({ height: '124px' }, 300);
				});

		    $('#spotlight-4-content').removeClass('').addClass('spotlight-slideup-4');
		    $('#c-spot-hd-4').removeClass('').addClass('c-spot-hd-bg');
		    $('#spotlight-4-content').animate({ height: '245px' }, 500, function() { $('#spotlight-4-content').removeClass('').addClass('spotlight-slideup-4'); });
		});

    $("#spotlight-4-content").mouseleave(
		function() {
		    $('#spotlight-4-content').animate({ height: '124px' }, 400, function() { $('#c-spot-hd-4').removeClass('c-spot-hd-bg').addClass(''); $('#spotlight-4-content').removeClass('spotlight-slideup-4').addClass(''); });
		});

    //SPOTLIGHT Random//
    var divLength = $("#c-spot-hd-1 div").length / 2;
    var ran = Math.floor(Math.random() * divLength) + 1;
    $("#c-spot-hd-1 div:nth-child(" + ran + ")").show();

    divLength = $("#c-spot-hd-2 div").length / 2;
    ran = Math.floor(Math.random() * divLength) + 1;
    $("#c-spot-hd-2 div:nth-child(" + ran + ")").show();

    divLength = $("#c-spot-hd-3 div").length / 2;
    ran = Math.floor(Math.random() * divLength) + 1;
    $("#c-spot-hd-3 div:nth-child(" + ran + ")").show();

    divLength = $("#c-spot-hd-4 div").length / 2;
    ran = Math.floor(Math.random() * divLength) + 1;
    $("#c-spot-hd-4 div:nth-child(" + ran + ")").show();
});	
 
