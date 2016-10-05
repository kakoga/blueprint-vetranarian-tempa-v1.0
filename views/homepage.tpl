  <!-- Header -->
	{{if {simple_blog_article.last().image} }}
	<header style="background-image:url({{simple_blog_article.last().image.getImage()}})">      
	{{else}}
	<header style="background-image:url({{page.image1.getImage()}})">      
	{{end-if}}
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">{{page.title1}}</div>
                <div class="intro-heading">{{page.subtitle1}}</div>
                <a href="{{simple_blog_article.last().getUrl()}}" class="page-scroll btn btn-xl">{{page.button_text_1}}</a>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
					<h2 class="section-heading">{{page.title2}}</h2>
                </div>
            </div>
            <div class="row">
				{{each social_feed as social limit 3 order by social.id ASC}}
				
				{{include social-loop}}
				
				{{end-each}}
				
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
					<a href="{{truepath(501)}}" class="page-scroll btn btn-xl">{{page.button_text_2}}</a>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">{{page.title3}}</h2>
					<h3 class="section-subheading text-muted">{{page.sub_title3}}</h3>
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
								<img class="img-circle img-responsive" src="{{timeline.image.getImage(400,400,crop)}}" alt="{{timeline.title}} Image">
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
								<h4>{{page.button_text_3}}</h4>
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
					<h2 class="section-heading">{{page.title4}}</h2>
					<h3 class="section-subheading text-muted">{{page.sub_title4}}</h3>
                </div>
            </div>
               <div class="row">
				{{each people as person limit 3}}
				<div class="col-sm-4">
                    <div class="team-member">
						<a href="{{person.getUrl()}}">
						<img src="{{person.image.getImage()}}" class="img-responsive img-circle" alt="{{person.name}} image">
						</a>
						<h4><a href="{{person.getUrl()}}">{{person.name}}</a></h4>
						<p class="text-muted">{{person.title}}</p>
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
                <div class="col-lg-12 text-center">
					<a href="{{influencers_page.first().getUrl()}}" class="page-scroll btn btn-xl">{{page.button_text_4}}</a>
                </div>
            </div>
        </div>
    </section>

   
   