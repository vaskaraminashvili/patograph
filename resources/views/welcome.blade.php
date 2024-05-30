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
                                    <div class="slider-content">
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
            @foreach($data['services'] as $service)
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box--standard" data-mh="info-boxes">
                        <div class="info-box-image">
                            <img loading="lazy" src="https://dummyimage.com/100X100/000/fff" alt="image">
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
</x-layouts.master>

<style>
    .main-slider__slide {
        background-repeat: no-repeat;
        background-size: cover;
    }
    .main-slider__slide .container{
        height: 70svh;
    }
</style>
