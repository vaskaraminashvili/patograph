var CRUMINA = {};
! function(e) {
    "use strict";
    var i = e(window),
        t = e(document),
        o = e("body"),
        n = {},
        a = e("#site-header"),
        r = e(".counter"),
        s = e(".skills-item"),
        l = e(".pie-chart"),
        c = e(".js-animate-icon"),
        d = e(".right-menu"),
        u = e(".primary-menu"),
        g = e("#site-footer"),
        m = e("#hellopreloader");
    CRUMINA.headerSpacer = {
        $spacer: null,
        $header: null,
        init: function() {
            this.$header = jQuery(a), this.$spacer = jQuery('<div class="header--spacer"></div>').insertAfter(this.$header)
        },
        resize: function() {
            var e = this;
            e.$spacer && setTimeout(function() {
                var i = e.$header.outerHeight(),
                    t = e.$header.css("background-color");
                e.$spacer.css({
                    height: i + "px",
                    "background-color": t
                })
            }, 100)
        }
    }, CRUMINA.updateResponsiveInit = function() {
        var i = null,
            t = function() {
                i = null, CRUMINA.headerSpacer.resize()
            };
        e(window).on("resize", function() {
            null === i && (i = window.setTimeout(function() {
                t()
            }, 200))
        }).resize()
    }, CRUMINA.preloader = function() {
        return i.scrollTop(0), setTimeout(function() {
            m.fadeOut(800)
        }, 800), !1
    };
    var p = jQuery(".popup-search"),
        f = jQuery(".cart-popup-wrap");
    CRUMINA.fixedHeader = function() {
        a.headroom({
            offset: 20,
            tolerance: 5,
            classes: {
                initial: "animated",
                pinned: "swingInX",
                unpinned: "swingOutX"
            }
        })
    }, CRUMINA.parallaxFooter = function() {
        g.length && g.hasClass("js-fixed-footer") && (g.before('<div class="block-footer-height"></div>'), e(".block-footer-height").matchHeight({
            target: g
        }))
    }, CRUMINA.counters = function() {
        r.length && r.each(function() {
            jQuery(this).waypoint(function() {
                e(this.element).find("span").countTo(), this.destroy()
            }, {
                offset: "95%"
            })
        })
    }, CRUMINA.progresBars = function() {
        s.length && s.each(function() {
            jQuery(this).waypoint(function() {
                e(this.element).find(".count-animate").countTo(), e(this.element).find(".skills-item-meter-active").fadeTo(300, 1).addClass("skills-animate"), this.destroy()
            }, {
                offset: "90%"
            })
        })
    }, CRUMINA.pieCharts = function() {
        l.length && l.each(function() {
            jQuery(this).waypoint(function() {
                var i = e(this.element),
                    t = i.data("start-color"),
                    o = i.data("end-color"),
                    n = 100 * i.data("value");
                i.circleProgress({
                    thickness: 16,
                    size: 320,
                    startAngle: -Math.PI / 4 * 2,
                    emptyFill: "#fff",
                    lineCap: "round",
                    fill: {
                        gradient: [t, o],
                        gradientAngle: Math.PI / 4
                    }
                }).on("circle-animation-progress", function(e, t) {
                    i.find(".content").html(parseInt(n * t, 10) + "<span>%</span>")
                }).on("circle-animation-end", function() {}), this.destroy()
            }, {
                offset: "90%"
            })
        })
    }, CRUMINA.animateSvg = function() {
        c.length && c.each(function() {
            jQuery(this).waypoint(function() {
                e(this.element).find("> svg").drawsvg().drawsvg("animate"), this.destroy()
            }, {
                offset: "95%"
            })
        })
    }, CRUMINA.customScroll = function() {
        setTimeout(function() {
            d.mCustomScrollbar({
                axis: "y",
                scrollEasing: "linear",
                scrollInertia: 150
            }, 500)
        })
    }, CRUMINA.togglePanel = function() {
        d.length && (d.toggleClass("opened"), o.toggleClass("overlay-enable"))
    }, CRUMINA.toggleSearch = function() {
        o.toggleClass("open"), e(".overlay_search-input").focus()
    }, CRUMINA.mediaPopups = function() {
        e(".js-popup-iframe").magnificPopup({
            disableOn: 700,
            type: "iframe",
            mainClass: "mfp-fade",
            removalDelay: 160,
            preloader: !1,
            fixedContentPos: !1,
            iframe: {
                patterns: {
                    youtube: {
                        src: "https://www.youtube.com/embed/%id%?autoplay=1"
                    },
                    vimeo: {
                        src: "https://player.vimeo.com/video/%id%?autoplay=1"
                    }
                }
            }
        }), e(".js-zoom-image, .link-image").magnificPopup({
            type: "image",
            removalDelay: 500,
            callbacks: {
                beforeOpen: function() {
                    this.st.image.markup = this.st.image.markup.replace("mfp-figure", "mfp-figure mfp-with-anim"), this.st.mainClass = "mfp-zoom-in"
                }
            },
            closeOnContentClick: !0,
            midClick: !0
        })
    }, CRUMINA.equalHeight = function() {
        e(".js-equal-child").find(".theme-module").matchHeight({
            property: "min-height"
        })
    }, CRUMINA.SubscribeScrollAnnimation = function() {
        var e = new ScrollMagic.Controller;
        new ScrollMagic.Scene({
            triggerElement: ".subscribe"
        }).setVelocity(".gear", {
            opacity: 1,
            rotateZ: "360deg"
        }, 1200).triggerHook("onEnter").addTo(e), new ScrollMagic.Scene({
            triggerElement: ".subscribe"
        }).setVelocity(".mail", {
            opacity: 1,
            bottom: "0"
        }, 600).triggerHook(.8).addTo(e), new ScrollMagic.Scene({
            triggerElement: ".subscribe"
        }).setVelocity(".mail-2", {
            opacity: 1,
            right: "20"
        }, 800).triggerHook(.9).addTo(e)
    }, CRUMINA.SeoScoreScrollAnnimation = function() {
        var e = new ScrollMagic.Controller;
        new ScrollMagic.Scene({
            triggerElement: ".seo-score"
        }).setVelocity(".seo-score .images img:first-of-type", {
            opacity: 1,
            top: "-10"
        }, 400).triggerHook("onEnter").addTo(e), new ScrollMagic.Scene({
            triggerElement: ".seo-score"
        }).setVelocity(".seo-score .images img:nth-child(2)", {
            opacity: 1,
            bottom: "0"
        }, 800).triggerHook(.7).addTo(e), new ScrollMagic.Scene({
            triggerElement: ".seo-score"
        }).setVelocity(".seo-score .images img:last-child", {
            opacity: 1,
            bottom: "0"
        }, 1e3).triggerHook(.8).addTo(e)
    }, CRUMINA.TestimonialScrollAnnimation = function() {
        var e = new ScrollMagic.Controller;
        new ScrollMagic.Scene({
            triggerElement: ".testimonial-slider"
        }).setVelocity(".testimonial-slider .testimonial-img", {
            opacity: 1,
            bottom: "-50"
        }, 400).triggerHook(.6).addTo(e), new ScrollMagic.Scene({
            triggerElement: ".testimonial-slider"
        }).setVelocity(".testimonial-slider .testimonial__thumb-img", {
            opacity: 1,
            top: "-100"
        }, 600).triggerHook(1).addTo(e)
    }, CRUMINA.OurVisionScrollAnnimation = function() {
        var e = new ScrollMagic.Controller;
        new ScrollMagic.Scene({
            triggerElement: ".our-vision"
        }).setVelocity(".our-vision .elements", {
            opacity: 1
        }, 600).triggerHook(.6).addTo(e), new ScrollMagic.Scene({
            triggerElement: ".our-vision"
        }).setVelocity(".our-vision .eye", {
            opacity: 1,
            bottom: "-90"
        }, 1e3).triggerHook(1).addTo(e)
    }, CRUMINA.MountainsScrollAnnimation = function() {
        var e = new ScrollMagic.Controller;
        new ScrollMagic.Scene({
            triggerElement: ".background-mountains"
        }).setVelocity(".images img:first-child", {
            opacity: 1,
            bottom: "0",
            paddingBottom: "10%"
        }, 800).triggerHook(.4).addTo(e), new ScrollMagic.Scene({
            triggerElement: ".background-mountains"
        }).setVelocity(".images img:last-child", {
            opacity: 1,
            bottom: "0"
        }, 800).triggerHook(.3).addTo(e)
    }, CRUMINA.IsotopeSort = function() {
        e(".sorting-container").each(function() {
            var i = e(this),
                t = i.data("layout").length ? i.data("layout") : "masonry";
            i.isotope({
                itemSelector: ".sorting-item",
                layoutMode: t,
                percentPosition: !0
            }), i.imagesLoaded().progress(function() {
                i.isotope("layout")
            }), i.siblings(".sorting-menu").find("li").on("click", function() {
                if (e(this).hasClass("active")) return !1;
                e(this).parent().find(".active").removeClass("active"), e(this).addClass("active");
                var t = e(this).data("filter");
                return void 0 !== t ? (i.isotope({
                    filter: t
                }), !1) : void 0
            })
        })
    }, CRUMINA.rangeSlider = function() {
        e(".range-slider-js").ionRangeSlider({
            type: "double",
            grid: !0,
            min: 0,
            max: 1e3,
            from: 200,
            to: 800,
            prefix: "$"
        })
    }, CRUMINA.initSwiper = function() {
        var i = 0,
            t = !1;
        e(".swiper-container").each(function() {
            var o = e(this),
                a = "swiper-unique-id-" + i;
            o.addClass("swiper-" + a + " initialized").attr("id", a), o.find(".swiper-pagination").addClass("pagination-" + a);
            var r = o.data("effect") ? o.data("effect") : "slide",
                s = !o.data("crossfade") || o.data("crossfade"),
                l = 0 != o.data("loop") || o.data("loop"),
                c = o.data("show-items") ? o.data("show-items") : 1,
                d = o.data("scroll-items") ? o.data("scroll-items") : 1,
                u = o.data("direction") ? o.data("direction") : "horizontal",
                g = !!o.data("mouse-scroll") && o.data("mouse-scroll"),
                m = o.data("autoplay") ? parseInt(o.data("autoplay"), 10) : 0,
                p = !!o.hasClass("auto-height"),
                f = c > 1 ? 20 : 0;
            c > 1 && (t = {
                480: {
                    slidesPerView: 1,
                    slidesPerGroup: 1
                },
                768: {
                    slidesPerView: 2,
                    slidesPerGroup: 2
                }
            }), n["swiper-" + a] = new Swiper(".swiper-" + a, {
                pagination: ".pagination-" + a,
                paginationClickable: !0,
                direction: u,
                mousewheelControl: g,
                mousewheelReleaseOnEdges: g,
                slidesPerView: c,
                slidesPerGroup: d,
                spaceBetween: f,
                keyboardControl: !0,
                setWrapperSize: !0,
                preloadImages: !0,
                updateOnImagesReady: !0,
                autoplay: m,
                autoHeight: p,
                loop: l,
                breakpoints: t,
                effect: r,
                fade: {
                    crossFade: s
                },
                parallax: !0,
                onImagesReady: function(e) {},
                onSlideChangeStart: function(e) {
                    if (o.find(".slider-slides").length) {
                        o.find(".slider-slides .slide-active").removeClass("slide-active");
                        var i = e.slides.eq(e.activeIndex).attr("data-swiper-slide-index");
                        o.find(".slider-slides .slides-item").eq(i).addClass("slide-active")
                    }
                }
            }), i++
        }), e(".btn-prev").on("click", function() {
            n["swiper-" + e(this).parent().attr("id")].slidePrev()
        }), e(".btn-next").on("click", function() {
            n["swiper-" + e(this).parent().attr("id")].slideNext()
        }), e(".slider-slides .slides-item").on("click", function() {
            if (e(this).hasClass("slide-active")) return !1;
            var i = e(this).parent().find(".slides-item").index(this);
            return n["swiper-" + e(this).closest(".swiper-container").attr("id")].slideTo(i + 1), e(this).parent().find(".slide-active").removeClass("slide-active"), e(this).addClass("slide-active"), !1
        })
    }, CRUMINA.burgerAnimation = function() {
        function e(e) {
            e.draw("80% - 240", "80%", .3, {
                delay: .1,
                callback: function() {
                    i(e)
                }
            })
        }

        function i(e) {
            e.draw("100% - 545", "100% - 305", .6, {
                easing: ease.ease("elastic-out", 1, .3)
            })
        }

        function t(e) {
            e.draw(g - 60, m + 60, .1, {
                callback: function() {
                    o(e)
                }
            })
        }

        function o(e) {
            e.draw(g + 120, m - 120, .3, {
                easing: ease.ease("bounce-out", 1, .3)
            })
        }

        function n(e) {
            e.draw("90% - 240", "90%", .1, {
                easing: ease.ease("elastic-in", 1, .3),
                callback: function() {
                    a(e)
                }
            })
        }

        function a(e) {
            e.draw("20% - 240", "20%", .3, {
                callback: function() {
                    r(e)
                }
            })
        }

        function r(e) {
            e.draw(d, u, .7, {
                easing: ease.ease("elastic-out", 1, .3)
            })
        }

        function s(e) {
            e.draw(g, m, .7, {
                delay: .1,
                easing: ease.ease("elastic-out", 2, .4)
            })
        }

        function l(e) {
            e.className = "menu-icon-wrapper scaled"
        }

        function c(e) {
            e.className = "menu-icon-wrapper"
        }
        var d = 80,
            u = 320,
            g = 80,
            m = 320,
            p = document.getElementById("pathD"),
            f = document.getElementById("pathE"),
            h = document.getElementById("pathF"),
            y = new Segment(p, d, u),
            C = new Segment(f, g, m),
            v = new Segment(h, d, u),
            w = document.getElementById("menu-icon-wrapper"),
            S = document.getElementById("menu-icon-trigger"),
            b = !0;
        w.style.visibility = "visible", S.onclick = function() {
            l(w), b ? (e(y), t(C), e(v)) : (n(y), s(C), n(v)), b = !b, setTimeout(function() {
                c(w)
            }, 450)
        }
    }, i.keydown(function(e) {
        27 == e.which && (d.hasClass("opened") && CRUMINA.togglePanel(), o.hasClass("open") && CRUMINA.toggleSearch())
    }), jQuery(".js-window-popup").on("click", function() {
        return setTimeout(function() {
            e(".window-popup").addClass("open"), o.toggleClass("body-overflow")
        }, 300), !1
    }), jQuery(".js-popup-close").on("click", function() {
        return e(".window-popup").removeClass("open"), o.removeClass("body-overflow"), !1
    }), jQuery(".js-close-aside").on("click", function() {
        return d.hasClass("opened") && CRUMINA.togglePanel(), !1
    }), jQuery(".js-open-aside").on("click", function() {
        return d.hasClass("opened") || CRUMINA.togglePanel(), !1
    }), jQuery(".js-open-search").on("click", function() {
        return CRUMINA.toggleSearch(), !1
    }), jQuery(".overlay_search-close").on("click", function() {
        return o.removeClass("open"), !1
    }), jQuery(".js-open-p-search").on("click", function() {
        p.fadeToggle()
    }), jQuery("#top-bar-js").on("click", function() {
        return e(".top-bar").addClass("open"), o.toggleClass("overlay-enable"), !1
    }), jQuery("#top-bar-close-js").on("click", function() {
        return e(".top-bar").removeClass("open"), o.removeClass("overlay-enable"), !1
    }), p.length && p.find("input").focus(function() {
        p.stop().animate({
            width: p.closest(".container").width() + 70
        }, 600)
    }).blur(function() {
        p.fadeToggle("fast", function() {
            p.css({
                width: ""
            })
        })
    }), t.on("click", function(i) {
        e(i.target).closest(f).length || f.hasClass("visible") && (f.fadeToggle(200), f.toggleClass("visible")), e(i.target).closest(d).length || d.hasClass("opened") && CRUMINA.togglePanel()
    }), jQuery(".js-cart-animate").on("click", function(e) {
        e.stopPropagation(), f.toggleClass("visible"), f.fadeToggle(200)
    }), e(".quantity-plus").on("click", function() {
        var i = parseInt(e(this).prev("input").val());
        return e(this).prev("input").val(i + 1).change(), !1
    }), e(".quantity-minus").on("click", function() {
        var i = parseInt(e(this).next("input").val());
        return 1 !== i && e(this).next("input").val(i - 1).change(), !1
    }), e(".collapse").collapse(), jQuery(".back-to-top").on("click", function() {
        return e("html,body").animate({
            scrollTop: 0
        }, 1200), !1
    }), jQuery(".input-inline").find("input").focus(function() {
        e(this).closest("form").addClass("input-drop-shadow")
    }).blur(function() {
        e(this).closest("form").removeClass("input-drop-shadow")
    }), CRUMINA.maps = {
        maps: {
            mapUSA: {
                config: {
                    id: "map",
                    map: {
                        center: new L.LatLng(38.897663, -77.036575),
                        zoom: 12,
                        maxZoom: 18,
                        layers: new L.tileLayer("https://{s}.tile.openstreetmap.de/tiles/osmde/{z}/{x}/{y}.png", {
                            maxZoom: 18,
                            attribution: ""
                        })
                    },
                    icon: {
                        iconSize: [56, 73],
                        iconAnchor: [22, 94],
                        className: "icon-map"
                    }
                },
                markers: [{
                    coords: [38.897663, -77.036575],
                    icon: "marker-google.png"
                }]
            }
        },
        init: function() {
            for (var e in this.maps) {
                var i = this.maps[e];
                if (i.config && i.markers && document.getElementById(i.config.id)) {
                    var t = new L.map(i.config.id, i.config.map),
                        o = L.markerClusterGroup({
                            iconCreateFunction: function(t) {
                                var o = t.getChildCount(),
                                    n = i.config.cluster;
                                return new L.DivIcon({
                                    html: "<div><span>" + o + "</span></div>",
                                    className: "marker-cluster marker-cluster-" + e,
                                    iconSize: new L.Point(n.iconSize[0], n.iconSize[1])
                                })
                            }
                        });
                    i.markers.forEach(function(e) {
                        i.config.icon.iconUrl = "./img/" + e.icon;
                        var t = L.icon(i.config.icon),
                            n = L.marker(e.coords, {
                                icon: t
                            });
                        o.addLayer(n)
                    }), t.addLayer(o), this.disableScroll(jQuery("#" + i.config.id), t)
                }
            }
        },
        disableScroll: function(e, i) {
            i.scrollWheelZoom.disable(), e.bind("mousewheel DOMMouseScroll", function(e) {
                e.stopPropagation(), 1 == e.ctrlKey ? (e.preventDefault(), i.scrollWheelZoom.enable(), setTimeout(function() {
                    i.scrollWheelZoom.disable()
                }, 1e3)) : i.scrollWheelZoom.disable()
            })
        }
    }, t.ready(function() {
        e("#menu-icon-wrapper").length && CRUMINA.burgerAnimation(), d.length && CRUMINA.customScroll(), u.crumegamenu({
            showSpeed: 0,
            hideSpeed: 0,
            trigger: "hover",
            animation: "drop-up",
            indicatorFirstLevel: "&#xf0d7",
            indicatorSecondLevel: "&#xf105"
        }), CRUMINA.fixedHeader(), CRUMINA.initSwiper(), CRUMINA.equalHeight(), CRUMINA.mediaPopups(), CRUMINA.IsotopeSort(), CRUMINA.parallaxFooter(), CRUMINA.rangeSlider(), CRUMINA.headerSpacer.init(), CRUMINA.updateResponsiveInit(), CRUMINA.maps.init(), e("select").niceSelect(), FastClick.attach(document.body), "function" == typeof SmoothScroll && (CRUMINA.smoothScroll = new SmoothScroll('a[href*="#"]', {
            header: "#site-header"
        })), CRUMINA.animateSvg(), CRUMINA.counters(), CRUMINA.progresBars(), CRUMINA.pieCharts(), e(".subscribe").length && CRUMINA.SubscribeScrollAnnimation(), e(".seo-score").length && CRUMINA.SeoScoreScrollAnnimation(), e(".testimonial-slider").length && CRUMINA.TestimonialScrollAnnimation(), e(".our-vision").length && CRUMINA.OurVisionScrollAnnimation(), e(".background-mountains").length && CRUMINA.MountainsScrollAnnimation()
    })
}(jQuery), $(document).ready(function() {

});
