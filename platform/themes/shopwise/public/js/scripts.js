/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*******************************************************!*\
  !*** ./platform/themes/shopwise/assets/js/scripts.js ***!
  \*******************************************************/
function _typeof(o) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (o) { return typeof o; } : function (o) { return o && "function" == typeof Symbol && o.constructor === Symbol && o !== Symbol.prototype ? "symbol" : typeof o; }, _typeof(o); }
/*===================================
Author       : Bestwebcreator.
Template Name: Shopwise - eCommerce Bootstrap 4 HTML Template
Version      : 1.0
===================================*/

/*===================================*
PAGE JS
*===================================*/

(function ($) {
  'use strict';

  var isRTL = $('body').prop('dir') === 'rtl';

  /*===================================*
  01. LOADING JS
  /*===================================*/
  $(window).on('load', function () {
    setTimeout(function () {
      $('.preloader').delay(700).fadeOut(700).addClass('loaded');
    }, 800);
  });

  /*===================================*
  02. BACKGROUND IMAGE JS
  *===================================*/
  /*data image src*/
  $('.background_bg').each(function () {
    var attr = $(this).attr('data-img-src');
    if (_typeof(attr) !== ( true ? "undefined" : 0) && attr !== false) {
      $(this).css('background-image', 'url(' + attr + ')');
    }
  });
  function sliderImageByResolution() {
    var windowWidth = $(window).width();
    $.each($('.banner_section .carousel-item'), function (index, el) {
      if (windowWidth >= 1200) {
        if ($(el).data('img-src')) {
          $(el).css({
            'background-image': 'url(' + $(el).data('img-src') + ')'
          });
        }
      } else if (windowWidth > 768) {
        if ($(el).data('tablet-img-src')) {
          $(el).css({
            'background-image': 'url(' + $(el).data('tablet-img-src') + ')'
          });
        }
      } else if (windowWidth <= 768) {
        if ($(el).data('mobile-img-src')) {
          $(el).css({
            'background-image': 'url(' + $(el).data('mobile-img-src') + ')'
          });
        }
      }
    });
  }
  $(document).ready(function () {
    sliderImageByResolution();
    $(window).resize(function () {
      sliderImageByResolution();
    });
  });

  /*===================================*
  03. ANIMATION JS
  *===================================*/
  $(function () {
    function ckScrollInit(items, trigger) {
      items.each(function () {
        var ckElement = $(this),
          AnimationClass = ckElement.attr('data-animation'),
          AnimationDelay = ckElement.attr('data-animation-delay');
        ckElement.css({
          '-webkit-animation-delay': AnimationDelay,
          '-moz-animation-delay': AnimationDelay,
          'animation-delay': AnimationDelay,
          opacity: 0
        });
        var ckTrigger = trigger ? trigger : ckElement;
        ckTrigger.waypoint(function () {
          ckElement.addClass('animated').css('opacity', '1');
          ckElement.addClass('animated').addClass(AnimationClass);
        }, {
          triggerOnce: true,
          offset: '90%'
        });
      });
    }
    ckScrollInit($('.animation'));
    ckScrollInit($('.staggered-animation'), $('.staggered-animation-wrap'));
  });

  /*===================================*
  04. MENU JS
  *===================================*/
  //Main navigation scroll spy for shadow
  $(window).on('scroll', function () {
    var scroll = $(window).scrollTop();
    if (scroll >= $('.bottom_header').offset().top) {
      $('.bottom_header_sticky.fixed-top').addClass('nav-fixed');
    } else {
      $('.bottom_header_sticky.fixed-top').removeClass('nav-fixed');
    }
  });

  // Show Hide dropdown-menu Main navigation
  $(document).ready(function () {
    $('.dropdown-menu a.dropdown-toggler').on('click', function () {
      if (!$(this).next().hasClass('show')) {
        $(this).parents('.dropdown-menu').first().find('.show').removeClass('show');
      }
      var $subMenu = $(this).next('.dropdown-menu');
      $subMenu.toggleClass('show');
      $(this).parent('li').toggleClass('show');
      $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function () {
        $('.dropdown-menu .show').removeClass('show');
      });
      return false;
    });
    $('[data-toggle="dropdown"]').dropdown();
  });

  //Hide Navbar Dropdown After Click On Links
  var navBar = $('.header_wrap');
  var navbarLinks = navBar.find('.navbar-collapse ul li a.page-scroll');
  $.each(navbarLinks, function () {
    var navbarLink = $(this);
    navbarLink.on('click', function () {
      navBar.find('.navbar-collapse').collapse('hide');
      $('header').removeClass('active');
    });
  });

  // Main navigation Active Class Add Remove
  $('.navbar-toggler').on('click', function () {
    $('header').toggleClass('active');
    if ($('.search-overlay').hasClass('open')) {
      $('.search-overlay').removeClass('open');
      $('.search_trigger').removeClass('open');
    }
  });
  $(document).ready(function () {
    var $bottomHeaderSticky = $('.bottom_header_sticky');
    if ($bottomHeaderSticky.hasClass('fixed-top') && !$bottomHeaderSticky.hasClass('transparent_header') && !$bottomHeaderSticky.hasClass('no-sticky')) {
      $('.header_wrap').before('<div class="header_sticky_bar d-none"></div>');
    }
  });
  $(window).on('scroll', function () {
    var scroll = $(window).scrollTop();
    if (scroll >= $('.bottom_header').offset().top) {
      $('.header_sticky_bar').removeClass('d-none');
      $('.bottom_header_sticky.no-sticky').removeClass('nav-fixed');
    } else {
      $('.header_sticky_bar').addClass('d-none');
    }
  });
  var setHeight = function setHeight() {
    var height_header = $('.header_wrap').height();
    $('.header_sticky_bar').css({
      'height': height_header
    });
  };
  $(window).on('load', function () {
    setHeight();
  });
  $(window).on('resize', function () {
    setHeight();
  });
  $('.sidetoggle').on('click', function () {
    $(this).addClass('open');
    $('body').addClass('sidetoggle_active');
    $('.sidebar_menu').addClass('active');
    $('body').append('<div id="header-overlay" class="header-overlay"></div>');
  });
  $(document).on('click', '#header-overlay, .sidemenu_close', function () {
    $('.sidetoggle').removeClass('open');
    $('body').removeClass('sidetoggle_active');
    $('.sidebar_menu').removeClass('active');
    $('#header-overlay').fadeOut('3000', function () {
      $('#header-overlay').remove();
    });
    return false;
  });
  $('.categories_btn').on('click', function () {
    $('.side_navbar_toggler').attr('aria-expanded', 'false');
    $('#navbarSidetoggle').removeClass('show');
  });
  $('.side_navbar_toggler').on('click', function () {
    $('.categories_btn').attr('aria-expanded', 'false');
    $('#navCatContent').removeClass('show');
  });
  $('.pr_search_trigger').on('click', function () {
    $(this).toggleClass('show');
    $('.product_search_form').toggleClass('show');
  });
  var rclass = true;
  $('html').on('click', function () {
    if (rclass) {
      $('.categories_btn').addClass('collapsed');
      $('.categories_btn,.side_navbar_toggler').attr('aria-expanded', 'false');
      $('#navCatContent,#navbarSidetoggle').removeClass('show');
    }
    rclass = true;
  });
  $('.categories_btn,#navCatContent,#navbarSidetoggle .navbar-nav,.side_navbar_toggler').on('click', function () {
    rclass = false;
  });

  /*===================================*
  05. SMOOTH SCROLLING JS
  *===================================*/
  // Select all links with hashes

  var topheaderHeight = $('.top-header').innerHeight();
  var mainheaderHeight = $('.header_wrap').innerHeight();
  var headerHeight = mainheaderHeight - topheaderHeight - 20;
  $('a.page-scroll[href*="#"]:not([href="#"])').on('click', function () {
    $('a.page-scroll.active').removeClass('active');
    $(this).closest('.page-scroll').addClass('active');
    // On-page links
    if (location.pathname.replace(/^\//, '') === this.pathname.replace(/^\//, '') && location.hostname === this.hostname) {
      // Figure out element to scroll to
      var target = $(this.hash),
        speed = $(this).data('speed') || 800;
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');

      // Does a scroll target exist?
      if (target.length) {
        // Only prevent default if animation is actually gonna happen
        event.preventDefault();
        $('html, body').animate({
          scrollTop: target.offset().top - headerHeight
        }, speed);
      }
    }
  });
  $(window).on('scroll', function () {
    var lastId,
      // All list items
      menuItems = $('.header_wrap').find('a.page-scroll'),
      topMenuHeight = $('.header_wrap').innerHeight() + 20,
      // Anchors corresponding to menu items
      scrollItems = menuItems.map(function () {
        var items = $($(this).attr('href'));
        if (items.length) {
          return items;
        }
      });
    var fromTop = $(this).scrollTop() + topMenuHeight;

    // Get id of current scroll item
    var cur = scrollItems.map(function () {
      if ($(this).offset().top < fromTop) return this;
    });
    // Get the id of the current element
    cur = cur[cur.length - 1];
    var id = cur && cur.length ? cur[0].id : '';
    if (lastId !== id) {
      lastId = id;
      // Set/remove active class
      menuItems.closest('.page-scroll').removeClass('active').end().filter("[href='#" + id + "']").closest('.page-scroll').addClass('active');
    }
  });
  $('.more_slide_open').slideUp();
  $('.more_categories').on('click', function () {
    $(this).toggleClass('show');
    $('.more_slide_open').slideToggle();
  });

  /*===================================*
  06. SEARCH JS
  *===================================*/

  $('.close-search').on('click', function () {
    $('.search_wrap,.search_overlay').removeClass('open');
    $('body').removeClass('search_open');
  });
  var removeClass = true;
  $('.search_wrap').after('<div class="search_overlay"></div>');
  $('.search_trigger').on('click', function () {
    $('.search_wrap,.search_overlay').toggleClass('open');
    $('body').toggleClass('search_open');
    removeClass = false;
    if ($('.navbar-collapse').hasClass('show')) {
      $('.navbar-collapse').removeClass('show');
      $('.navbar-toggler').addClass('collapsed');
      $('.navbar-toggler').attr('aria-expanded', false);
    }
  });
  $('.search_wrap form').on('click', function () {
    removeClass = false;
  });
  $('html').on('click', function () {
    if (removeClass) {
      $('body').removeClass('open');
      $('.search_wrap,.search_overlay').removeClass('open');
      $('body').removeClass('search_open');
    }
    removeClass = true;
  });

  /*===================================*
  07. SCROLLUP JS
  *===================================*/
  $(window).on('scroll', function () {
    if ($(this).scrollTop() > 150) {
      $('.scrollup').fadeIn();
    } else {
      $('.scrollup').fadeOut();
    }
  });
  $('.scrollup').on('click', function (e) {
    e.preventDefault();
    $('html, body').animate({
      scrollTop: 0
    }, 600);
    return false;
  });

  /*===================================*
  09. MASONRY JS
  *===================================*/
  $(window).on('load', function () {
    var $grid_selectors = $('.grid_container');
    if ($grid_selectors.length) {
      var filter_selectors = '.grid_filter > li > a';
      if ($grid_selectors.length > 0) {
        $grid_selectors.imagesLoaded(function () {
          if ($grid_selectors.hasClass('masonry')) {
            $grid_selectors.isotope({
              itemSelector: '.grid_item',
              percentPosition: true,
              layoutMode: 'masonry',
              masonry: {
                columnWidth: '.grid-sizer'
              }
            });
          } else {
            $grid_selectors.isotope({
              itemSelector: '.grid_item',
              percentPosition: true,
              layoutMode: 'fitRows'
            });
          }
        });
      }

      //isotope filter
      $(document).on('click', filter_selectors, function () {
        $(filter_selectors).removeClass('current');
        $(this).addClass('current');
        var dfselector = $(this).data('filter');
        if ($grid_selectors.hasClass('masonry')) {
          $grid_selectors.isotope({
            itemSelector: '.grid_item',
            layoutMode: 'masonry',
            masonry: {
              columnWidth: '.grid_item'
            },
            filter: dfselector
          });
        } else {
          $grid_selectors.isotope({
            itemSelector: '.grid_item',
            layoutMode: 'fitRows',
            filter: dfselector
          });
        }
        return false;
      });
      $('.portfolio_filter').on('change', function () {
        $grid_selectors.isotope({
          filter: this.value
        });
      });
      $(window).on('resize', function () {
        setTimeout(function () {
          $grid_selectors.find('.grid_item').removeClass('animation').removeClass('animated'); // avoid problem to filter after window resize
          $grid_selectors.isotope('layout');
        }, 300);
      });
    }
  });
  $('.link_container').each(function () {
    $(this).magnificPopup({
      delegate: '.image_popup',
      type: 'image',
      mainClass: 'mfp-zoom-in',
      removalDelay: 500,
      gallery: {
        enabled: true
      }
    });
  });

  /*===================================*
  10. SLIDER JS
  *===================================*/
  function carousel_slider() {
    $('.carousel_slider').each(function () {
      var $carousel = $(this);
      $carousel.owlCarousel({
        rtl: isRTL,
        dots: $carousel.data('dots'),
        loop: $carousel.data('loop'),
        items: $carousel.data('items'),
        margin: $carousel.data('margin'),
        mouseDrag: $carousel.data('mouse-drag'),
        touchDrag: $carousel.data('touch-drag'),
        autoHeight: $carousel.data('autoheight'),
        center: $carousel.data('center'),
        nav: $carousel.data('nav'),
        rewind: $carousel.data('rewind'),
        navText: ['<i class="ion-ios-arrow-left"></i>', '<i class="ion-ios-arrow-right"></i>'],
        autoplay: $carousel.data('autoplay'),
        animateIn: $carousel.data('animate-in'),
        animateOut: $carousel.data('animate-out'),
        autoplayTimeout: $carousel.data('autoplay-timeout'),
        smartSpeed: $carousel.data('smart-speed'),
        responsive: $carousel.data('responsive')
      });
    });
  }
  function slick_slider() {
    $('.slick_slider').each(function () {
      var $slick_carousel = $(this);
      $slick_carousel.not('.slick-initialized').slick({
        rtl: isRTL,
        arrows: $slick_carousel.data('arrows'),
        dots: $slick_carousel.data('dots'),
        infinite: $slick_carousel.data('infinite'),
        centerMode: $slick_carousel.data('center-mode'),
        vertical: $slick_carousel.data('vertical'),
        fade: $slick_carousel.data('fade'),
        cssEase: $slick_carousel.data('css-ease'),
        autoplay: $slick_carousel.data('autoplay'),
        verticalSwiping: $slick_carousel.data('vertical-swiping'),
        autoplaySpeed: $slick_carousel.data('autoplay-speed'),
        speed: $slick_carousel.data('speed'),
        pauseOnHover: $slick_carousel.data('pause-on-hover'),
        draggable: $slick_carousel.data('draggable'),
        slidesToShow: $slick_carousel.data('slides-to-show'),
        slidesToScroll: $slick_carousel.data('slides-to-scroll'),
        asNavFor: $slick_carousel.data('as-nav-for'),
        focusOnSelect: $slick_carousel.data('focus-on-select'),
        responsive: $slick_carousel.data('responsive')
      });
    });
  }
  $(document).ready(function () {
    carousel_slider();
    slick_slider();
  });

  /*===================================*
  12. POPUP JS
  *===================================*/
  $('.content-popup').magnificPopup({
    type: 'inline',
    preloader: true,
    mainClass: 'mfp-zoom-in'
  });
  $('.image_gallery').each(function () {
    // the containers for all your galleries
    $(this).magnificPopup({
      delegate: 'a',
      // the selector for gallery item
      type: 'image',
      gallery: {
        enabled: true
      }
    });
  });
  $('.popup-ajax').magnificPopup({
    type: 'ajax',
    callbacks: {
      ajaxContentAdded: function ajaxContentAdded() {
        carousel_slider();
        slick_slider();
      }
    }
  });
  $('.video_popup, .iframe_popup').magnificPopup({
    type: 'iframe',
    removalDelay: 160,
    mainClass: 'mfp-zoom-in',
    preloader: false,
    fixedContentPos: false
  });

  /*===================================*
  13. Select dropdowns
  *===================================*/

  if ($('select').length) {
    // Traverse through all dropdowns
    $.each($('select'), function (i, val) {
      var $el = $(val);
      if ($el.val() === '') {
        $el.addClass('first_null');
      }
      if (!$el.val()) {
        $el.addClass('not_chosen');
      }
      $el.on('change', function () {
        if (!$el.val()) $el.addClass('not_chosen');else $el.removeClass('not_chosen');
      });
    });
  }

  /*==============================================================
  14. FIT VIDEO JS
  ==============================================================*/
  if ($('.fit-videos').length > 0) {
    $('.fit-videos').fitVids({
      customSelector: "iframe[src^='https://w.soundcloud.com']"
    });
  }

  /*==============================================================
  15. DROPDOWN JS
  ==============================================================*/
  if ($('.custome_select').length > 0) {
    $(document).ready(function () {
      $('.custome_select').msDropdown();
    });
  }
  var trans = function trans(key) {
    window.trans = window.trans || {};
    return window.trans[key] !== 'undefined' && window.trans[key] ? window.trans[key] : key;
  };

  /*===================================*
  17. COUNTDOWN JS
  *===================================*/
  $('.countdown_time').each(function () {
    var endTime = $(this).data('time');
    $(this).countdown(endTime, function (tm) {
      $(this).html(tm.strftime('<div class="countdown_box"><div class="countdown-wrap"><span class="countdown days">%D </span>' + '<span class="cd_text">' + trans('Days') + '</span></div></div><div class="countdown_box"><div class="countdown-wrap">' + '<span class="countdown hours">%H</span><span class="cd_text">' + trans('Hours') + '</span></div></div><div class="countdown_box"><div class="countdown-wrap">' + '<span class="countdown minutes">%M</span><span class="cd_text">' + trans('Minutes') + '</span></div></div><div class="countdown_box">' + '<div class="countdown-wrap"><span class="countdown seconds">%S</span><span class="cd_text">' + trans('Seconds') + '</span></div></div>'));
    });
  });

  /*===================================*
  18. List Grid JS
  *===================================*/
  $(document).on('click', '.shorting_icon', function () {
    if ($(this).hasClass('grid')) {
      $('.shop_container').removeClass('list').addClass('grid');
      $(this).addClass('active').siblings().removeClass('active');
    } else if ($(this).hasClass('list')) {
      $('.shop_container').removeClass('grid').addClass('list');
      $(this).addClass('active').siblings().removeClass('active');
    }
    $('.shop_container').append('<div class="loading_pr"><div class="mfp-preloader"></div></div>');
    setTimeout(function () {
      $('.loading_pr').remove();
    }, 500);
  });

  /*===================================*
  19. TOOLTIP JS
  *===================================*/
  $(function () {
    $('[data-toggle="tooltip"]').tooltip({
      trigger: 'hover'
    });
  });
  $(function () {
    $('[data-toggle="popover"]').popover();
  });

  /*===================================*
  20. PRODUCT COLOR JS
  *===================================*/
  $('.product_color_switch span').each(function () {
    var get_color = $(this).attr('data-color');
    $(this).css('background-color', get_color);
  });
  $('.product_color_switch span,.product_size_switch span').on('click', function () {
    $(this).siblings(this).removeClass('active').end().addClass('active');
  });

  /*===================================*
  21. QUICK VIEW POPUP + ZOOM IMAGE + PRODUCT SLIDER JS
  *===================================*/

  var zoomProductImage = function zoomProductImage() {
    var image = $('#product_img');
    var zoomActive = false;
    zoomActive = !zoomActive;
    if (zoomActive) {
      if ($(image).length > 0) {
        $(image).elevateZoom({
          cursor: 'crosshair',
          easing: true,
          gallery: 'pr_item_gallery',
          zoomType: 'inner',
          galleryActiveClass: 'active'
        });
      }
    } else {
      $.removeData(image, 'elevateZoom'); //remove zoom instance from image
      $('.zoomContainer:last-child').remove(); // remove zoom container from DOM
    }
  };

  $.magnificPopup.defaults.callbacks = {
    open: function open() {
      $('body').addClass('zoom_image');
    },
    close: function close() {
      // Wait until overflow:hidden has been removed from the html tag
      setTimeout(function () {
        $('body').removeClass('zoom_image').removeClass('zoom_gallery_image');
        $('.zoomContainer:last-child').remove(); // remove zoom container from DOM
        $('.zoomContainer').slice(1).remove();
      }, 100);
    }
  };

  // Set up gallery on click
  var galleryZoom = $('#pr_item_gallery');
  galleryZoom.magnificPopup({
    delegate: 'a',
    type: 'image',
    gallery: {
      enabled: true
    },
    callbacks: {
      elementParse: function elementParse(item) {
        item.src = $('#product_img').data('zoom-enable') == true ? item.el.attr('data-zoom-image') : item.el.attr('data-image');
      }
    }
  });

  // Zoom image when click on icon
  $('.product_img_zoom').on('click', function () {
    var actual = $('#pr_item_gallery a').attr('data-zoom-image');
    $('body').addClass('zoom_gallery_image');
    $('#pr_item_gallery .item').each(function () {
      if (actual == $(this).find('.product_gallery_item').attr('data-zoom-image')) {
        return galleryZoom.magnificPopup('open', $(this).index());
      }
    });
  });

  /*===================================*
  22. PRICE FILTER JS
  *===================================*/
  $(document).ready(function () {
    function number_format(number, decimals, dec_point, thousands_sep) {
      var n = !isFinite(+number) ? 0 : +number,
        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
        sep = typeof thousands_sep === 'undefined' ? ',' : thousands_sep,
        dec = typeof dec_point === 'undefined' ? '.' : dec_point,
        toFixedFix = function toFixedFix(n, prec) {
          // Fix for IE parseFloat(0.55).toFixed(0) = 0;
          var k = Math.pow(10, prec);
          return Math.round(n * k) / k;
        },
        s = (prec ? toFixedFix(n, prec) : Math.round(n)).toString().split('.');
      if (s[0].length > 3) {
        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
      }
      if ((s[1] || '').length < prec) {
        s[1] = s[1] || '';
        s[1] += new Array(prec - s[1].length + 1).join('0');
      }
      return s.join(dec);
    }
    var $filter_selector = $('#price_filter');
    if ($filter_selector.length) {
      var a = $filter_selector.data('min-value');
      var b = $filter_selector.data('max-value');
      var c = $filter_selector.data('price-sign');
      var isPrefixSymbol = $('div[data-is-prefix-symbol]').data('is-prefix-symbol');
      $filter_selector.slider({
        isRTL: isRTL,
        range: true,
        min: $filter_selector.data('min'),
        max: $filter_selector.data('max'),
        values: [a, b],
        slide: function slide(event, ui) {
          var from = ui.values[0];
          var to = ui.values[1];
          if (isPrefixSymbol == '1') {
            from = c + from;
            to = c + to;
          } else {
            from = from + c;
            to = to + c;
          }
          $('#flt_price').html(from + ' - ' + to);
          $('#price_first').val(ui.values[0]);
          $('#price_second').val(ui.values[1]);
        },
        stop: function stop() {
          $('#price_filter').closest('form').submit();
        }
      });
      var from = number_format($filter_selector.slider('values', 0));
      var to = number_format($filter_selector.slider('values', 1));
      if (isPrefixSymbol == '1') {
        from = c + from;
        to = c + to;
      } else {
        from = from + c;
        to = to + c;
      }
      $('#flt_price').html(from + ' - ' + to);
    }
  });

  /*===================================*
  23. RATING STAR JS
  *===================================*/
  $(document).ready(function () {
    $('.star_rating span').on('click', function () {
      var onStar = parseFloat($(this).data('value'), 10); // The star currently selected
      var stars = $(this).parent().children('.star_rating span');
      for (var i = 0; i < stars.length; i++) {
        $(stars[i]).removeClass('selected');
      }
      for (var _i = 0; _i < onStar; _i++) {
        $(stars[_i]).addClass('selected');
      }
      $(this).closest('form').find('input[name=star]').val(onStar);
    });
  });
  var listCategories = $('.ps-list--categories');
  if (listCategories.length > 0) {
    $('.ps-list--categories .menu-item-has-children > .sub-toggle').on('click', function (e) {
      e.preventDefault();
      var current = $(this).parent('.menu-item-has-children');
      $(this).toggleClass('active');
      current.siblings().find('.sub-toggle').removeClass('active');
      current.children('.sub-menu').slideToggle(350);
      current.siblings().find('.sub-menu').slideUp(350);
      if (current.hasClass('has-mega-menu')) {
        current.children('.mega-menu').slideToggle(350);
        current.siblings('.has-mega-menu').find('.mega-menu').slideUp(350);
      }
    });
  }
  $(document).ready(function () {
    zoomProductImage();
    if ($('#product_img').data('zoom-enable') != true) {
      setTimeout(function () {
        $.removeData($('#product_img'), 'elevateZoom'); //remove zoom instance from image
        $('.zoomContainer:last-child').remove(); // remove zoom container from DOM
      }, 500);
    }
  });
})(jQuery);
/******/ })()
;