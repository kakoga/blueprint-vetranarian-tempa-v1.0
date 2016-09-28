  <!-- Header -->
    <header style="background-image:url({{page.image1.getImage()}})">      
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">{{page.title1}}</div>
                <div class="intro-heading">{{page.subtitle1}}</div>
                <a href="{{truepath(527)}}" class="page-scroll btn btn-xl">{{page.button_text_1}}</a>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
					<h2 class="section-heading">{{page.title1}}</h2>
					<h3 class="section-subheading text-muted">{{page.content1}}</h3>
                </div>
            </div>
            <div class="row">
				{{each social_feed as social limit 3}}
				
				{{include social-loop}}
				
				{{end-each}}
				
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
					<a href="{{truepath(501)}}" class="page-scroll btn btn-xl">{{page.button_text_1}}</a>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">{{page.title2}}</h2>
					<h3 class="section-subheading text-muted">{{page.content2}}</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
						{{each home_page_about_timeline as timeline}}
						{{if {index} % 2 = 0}}
						<li class="timeline-inverted">
						{{else}}
						<li>
						{{end-if}}
                            <div class="timeline-image">
								<img class="img-circle img-responsive" src="{{timeline.image.getImage()}}" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
									<h4>{{timeline.timeframe}}</h4>
                                    <h4 class="subheading">{{timeline.title}}</h4>
                                </div>
                                <div class="timeline-body">
									<p class="text-muted">{{timeline.short_blurb}}</p>
                                </div>
                            </div>
                        </li>
						{{end-each}}
                    
                        <li class="timeline-inverted">
                            <div class="timeline-image">
								<h4>{{page.title2}}</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Team Section -->
    <section id="team" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
					<h2 class="section-heading">{{page.title3}}</h2>
					<h3 class="section-subheading text-muted">{{page.sub_title3}}</h3>
                </div>
            </div>
            <div class="row">
				{{each influencer as influencer limit 3}}
				<div class="col-sm-4">
                    <div class="team-member">
						<img src="{{influencer.image.getImage()}}" class="img-responsive img-circle" alt="{{influencer.name}} image">
						<h4>{{influencer.name}}</h4>
						<p class="text-muted">{{influencer.title}}</p>
                        (**<ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                        **)
                    </div>
                </div>
				{{end-each}}
              
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
					<p class="large text-muted">{{page.content3}}</p>
                </div>
            </div>
        </div>
    </section>

   
   