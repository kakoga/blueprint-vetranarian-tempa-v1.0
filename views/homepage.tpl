  <!-- Header -->
    <header style="background-image:url({{page.image1.getImage()}})">      
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">{{page.title1}}</div>
                <div class="intro-heading">{{page.subtitle1}}</div>
                <a href="#services" class="page-scroll btn btn-xl">{{page.button_text_1}}</a>
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
				{{each social_feed as social}}
				
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal{{index}}" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
						<img src="{{social.image_url}}" class="img-responsive" alt="{{social.content.striptags()}}">
                    </a>
                    <div class="portfolio-caption">
						<h4>Posted by <a target="_blank" href="{{social.post_url}}">{{social.username}}</a></h4>
                        <p class="text-muted">{{social.content}}</p>
                    </div>
                </div>
				{{if {index} % 3 == 0 }}
			</div>
			<div class="row">
				{{end-if}}
				
				 <!-- Social Modal {{index}} -->
			    <div class="portfolio-modal modal fade" id="portfolioModal{{index}}" tabindex="-1" role="dialog" aria-hidden="true">
			        <div class="modal-dialog">
			            <div class="modal-content">
			                <div class="close-modal" data-dismiss="modal">
			                    <div class="lr">
			                        <div class="rl">
			                        </div>
			                    </div>
			                </div>
			                <div class="container">
			                    <div class="row">
			                        <div class="col-lg-8 col-lg-offset-2">
			                            <div class="modal-body">
			                                <!-- Project Details Go Here -->
			                                <h2>Posted by {{social.user_name}}</h2>
			                                <p class="item-intro text-muted">Posted on {{social.date_created}}</p>
			                                <img class="img-responsive img-centered" src="{{social.image_url}}" alt="">
			                                <p>{{social.content.activate_links()}}</p>
			                                 <div>
												<a href="http://www.facebook.com/sharer/sharer.php?u={{social.post_url}}&t={{social.title}}&description={{social.content.substr(0,70)}}&picture={{social.image_url}}" target="_blank" class="share-popup" >
													 <i class="fa fa-facebook"></i>
												</a>
												<a href="http://www.twitter.com/intent/tweet?url={{social.post_url}}&text={{social.title}}" target="_blank" class="share-popup">
													 <i class="fa fa-twitter"></i>
												</a>
											</div>
			                                
			                                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>

				
				
				{{end-each}}
				
            
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
				{{each team_member as customer limit 3}}
				<div class="col-sm-4">
                    <div class="team-member">
						<img src="{{customer.image.getImage()}}" class="img-responsive img-circle" alt="{{customer.name}} image">
						<h4>{{customer.name}}</h4>
						<p class="text-muted">{{customer.title}}</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
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

    <!-- Clients Aside -->
    <aside class="clients">
        <div class="container">
              <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
					<p class="large text-muted">{{page.title4}}</p>
                </div>
            </div>
            <div class="row">
	            
	            
	            {{each featured_in as featured limit 4}}
	            
                <div class="col-md-3 col-sm-6">
                    <a target="_blank" href="{{featured.url}}">
                        <img src="{{featured.image.getImage()}}" class="img-responsive img-centered" alt="{{featured.name}}">
                    </a>
                </div>
                {{end-each}}
                
            </div>
        </div>
    </aside>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contact Us</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
   