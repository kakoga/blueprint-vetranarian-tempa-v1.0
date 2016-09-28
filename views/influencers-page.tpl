
<!-- Generic Page View -->
<section>
    <div class="container">
	   (** recipe: team > main team page view **)
		<div class="influencers-page">
			<h1 itemprop="name headline">{{page.title}}</h1>
			(** if there is an image, show it in the header with an H1 overlay **)
			{{ if {page.image} }}
			<img src="{{page.image.getImage()}}" alt="{{page.title}} header image">
			{{end-if}}
			<div class="z-row">
				<div class="team-wrap">	
					<div itemprop="text">{{page.description}}</div>
					<div class="team-members">
						<div class="row">
						{{each influencer as influencer sort by influencer.sort asc}}
							<div class="col-md-4 col-sm-6 portfolio-item" temscope="" itemtype="http://schema.org/Person">
								<a href="{{influencer.getUrl()}}" class="portfolio-link">
			                        <div class="portfolio-hover">
			                            <div class="portfolio-hover-content">
			                                <i class="fa fa-plus fa-3x"></i>
			                            </div>
			                        </div>
									<img itemprop="image" src="{{influencer.image.getImage(600,600,crop)}}" class="img-responsive" alt="{{influencer.name}}, {{influencer.title}} ">
			                    </a>
			                    <div class="portfolio-caption">
									<h4  itemprop="jobTitle"><a href="{{influencer.getUrl()}}">{{influencer.name}}</a>, {{influencer.title}} </h4>
			                        
			                    </div>
			                </div>
							
													
						(** logic to create perfect columns and rows **)
						{{if {index} % 4 == 0}}
						</div>
						<div class="row">
						{{end-if}}
						
						{{end-each}}
						</div>
					</div>
				</div>
			</div>
		</div>


    </div>
</section>
