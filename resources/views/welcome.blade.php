<x-layouts.master>
    <!-- Main Slider -->

    <div class="container-full-width">
        <div class="swiper-container main-slider" data-effect="fade" data-autoplay="4000">

            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->

                @foreach($data['slides'] as $slide)
                    <div class="main-slider__slide swiper-slide bg-primary-color main-slider-bg-dark thumb-left"
                         style="background-image: url({{asset('/storage/'.$slide->img)}});"
                    >

                        <div class="container table">
                            <div class="row table-cell">

                                <div class="col-lg-5 table-cell">
                                    <div class="slider-content bg-transparent">
                                        <h3 class="slider-content-title" data-swiper-parallax="-100">
                                            {{$slide->title}}
                                        </h3>
                                        <h6 class="slider-content-text" data-swiper-parallax="-200">

                                            {{$slide->description}}
                                        </h6>

                                        <div class="main-slider-btn-wrap" data-swiper-parallax="-300">

                                            <a href="{{$slide->url}}"
                                               class="btn btn-medium btn--dark btn-hover-shadow">
                                                <span class="text">learn more</span>
                                                <span class="semicircle"></span>
                                            </a>


                                        </div>

                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                @endforeach

            </div>

            <!--Prev next buttons-->

            <svg class="btn-next btn-next-black">
                <use xlink:href="#arrow-right"></use>
            </svg>

            <svg class="btn-prev btn-prev-black">
                <use xlink:href="#arrow-left"></use>
            </svg>

            <!--Pagination tabs-->

            <div class="slider-slides">
                <a href="#" class="slides-item bg-border-color main-slider-bg-light">
                    <div class="content">
                        <div class="text-wrap">
                            <h4 class="slides-title">Search Engine Optimization</h4>
                        </div>
                        <div class="slides-number">01</div>
                    </div>
                </a>

                <a href="#" class="slides-item bg-primary-color">
                    <div class="content">
                        <div class="text-wrap">
                            <h4 class="slides-title">Local SEO</h4>
                            <div class="slides-sub-title">Mirum est notare quam littera.</div>
                        </div>
                        <div class="slides-number">02</div>
                    </div>
                </a>

                <a href="#" class="slides-item bg-secondary-color">
                    <div class="content">
                        <div class="text-wrap">
                            <h4 class="slides-title">Social Media Marketing</h4>
                        </div>
                        <div class="slides-number">03</div>
                    </div>
                </a>

                <a href="#" class="slides-item bg-orange-color">
                    <div class="content">
                        <div class="text-wrap">
                            <h4 class="slides-title">Email Marketing</h4>
                        </div>
                        <div class="slides-number">04</div>
                    </div>
                </a>

                <a href="#" class="slides-item bg-green-color">
                    <div class="content">
                        <div class="text-wrap">
                            <h4 class="slides-title">Pay Per Click Management</h4>
                        </div>
                        <div class="slides-number">05</div>
                    </div>
                </a>
            </div>
        </div>
    </div>


    <!-- ... End Main Slider -->

    <!-- Info-Box -->

    <div class="container info-boxes pt100 pb100">

        <div class="row">
            <div class="col-12">
                <h2 class="align-center mb-4">Services</h2>
            </div>
        </div>
        <div class="row">
            @foreach($data['services'] as $service)
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box--standard" data-mh="info-boxes">
                        <div class="info-box-image">
                            <img loading="lazy" src="{{asset('/storage/'.$service->img)}}" alt="image">
                        </div>
                        <div class="info-box-content">
                            <h5 class="info-box-title">{{$service->title}}</h5>
                            <p class="text">
                                {{$service->descirption}}
                            </p>
                        </div>
                    </div>
                </div>

            @endforeach


        </div>

    </div>

    <!-- ... End Info-Box -->


    <!-- Projects -->

    <div class="container">
        <div class="row medium-padding120">
            <div class="recent-case align-center">

                <div class="col-lg-12">

                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
                            <div class="heading align-center">
                                <h4 class="h1 heading-title">Our Projects</h4>
                                <div class="heading-line">
                                    <span class="short-line"></span>
                                    <span class="long-line"></span>
                                </div>
                                <p class="heading-text">Claritas est etiam processus dynamicus,
                                    qui sequitur mutationem consuetudium.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="case-item-wrap">
                            @foreach($data['projects'] as $project)
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="case-item">
                                        <div class="case-item__thumb">
                                            <img loading="lazy" src="{{asset('storage/'.$project->img)}}"
                                                 alt="our case">
                                        </div>
                                        <h6 class="case-item__title"><a href="#">{{$project->title}}</a>
                                        </h6>
                                        {{$project->shortDesc}}
                                    </div>
                                </div>

                            @endforeach

                        </div>
                    </div>

                    <a href="11_case_studies.html" class="btn btn-medium btn--dark">
                        <span class="text">All Projects</span>
                        <span class="semicircle"></span>
                    </a>
                </div>

            </div>
        </div>
    </div>

    <!-- End Projects -->

    <!-- TEAM -->

    <div class="container-fluid">
        <div class="row">
            <div class="background-mountains medium-padding120 scrollme">

                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
                            <div class="heading align-center">
                                <h4 class="h1 heading-title">Our Team</h4>
                                <div class="heading-line">
                                    <span class="short-line"></span>
                                    <span class="long-line"></span>
                                </div>
                                <p class="heading-text">Claritas est etiam processus dynamicus, qui sequitur mutationem
                                    consuetudium.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        @foreach($data['team'] as $employee)
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                <div class="info-box--standard-centered">
                                    <div class="info-box-image">
                                        <img loading="lazy" src="{{asset('storage/'.$employee->img)}}" alt="image">
                                    </div>
                                    <div class="info-box-content">
                                        <h4 class="info-box-title">{{$employee->name}} {{$employee->surname}}</h4>
                                        <p class="text">
                                            {{$employee->description}}
                                        </p>
                                    </div>
                                </div>
                            </div>

                        @endforeach


                    </div>

                    <div class="row align-center">
                        <div class="btn-block">
                            <a href="03_services.html" class="btn btn-medium btn--dark">
                                <span class="text">More Info</span>
                                <span class="semicircle"></span>
                            </a>
                            <a href="03_services.html" class="btn btn-medium btn--breez">
                                <span class="text">Get Started!</span>
                                <span class="semicircle"></span>
                            </a>
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>

    <!-- End TEAM -->

    <!-- Clients -->

    <div class="section">
        <div class="client-carousel medium-padding120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
                        <div class="heading align-center">
                            <h4 class="h1 heading-title">Our Valuable Clients</h4>
                            <div class="heading-line">
                                <span class="short-line"></span>
                                <span class="long-line"></span>
                            </div>
                            <p class="heading-text">Qui mutationem consuetudium. </p>
                        </div>
                    </div>
                </div>

                <div class="theme-module clients-slider-module">

                    <div class="swiper-container pagination-bottom" data-show-items="4">

                        <div class="swiper-wrapper">
                            @foreach($data['partners'] as $parnter)
                                <div class="swiper-slide client-item">
                                    <a href="09_our_clients.html" class="client-image">
                                        <img loading="lazy" src="{{asset('storage/'.$parnter->img)}}" alt="logo"
                                             class="hover">
                                    </a>
                                </div>

                            @endforeach


                        </div>

                        <!--Prev Next Arrows-->
                        <svg class="btn-next">
                            <use xlink:href="#arrow-right"></use>
                        </svg>

                        <svg class="btn-prev">
                            <use xlink:href="#arrow-left"></use>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- End Clients -->


    <!-- Pricing table -->

    <div class="container-fluid">
        <div class="row">
            <div class="pricing-tables medium-padding120 bg-border-color">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
                            <div class="heading align-center">
                                <h4 class="h1 heading-title">Our Pricing Packages</h4>
                                <div class="heading-line">
                                    <span class="short-line"></span>
                                    <span class="long-line"></span>
                                </div>
                                <p class="heading-text">Claritas est etiam processus dynamicus,
                                    qui sequitur mutationem consuetudium.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="pricing-tables-wrap">
                            @foreach($data['plans'] as $plan)
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

                                    <div class="pricing-tables-item">
                                        <div class="pricing-tables-icon">
                                            <img loading="lazy" src="{{asset('storage/'.$plan->img)}}" alt="personal">
                                        </div>
                                        <a href="#" class="pricing-title">{{$plan->title}}</a>
                                        {!!  $plan->description !!}
                                        <h4 class="rate">${{$plan->price}}</h4>
                                        <a href="20_checkout.html" class="btn btn-medium btn--dark">
                                            <span class="text">Order Now!</span>
                                            <span class="semicircle"></span>
                                        </a>
                                    </div>

                                </div>
                            @endforeach


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- End Pricing table -->

</x-layouts.master>

<style>
    .main-slider__slide {
        background-repeat: no-repeat;
        background-size: cover;
    }

    .main-slider__slide .container {
        height: 70svh;
    }
</style>
