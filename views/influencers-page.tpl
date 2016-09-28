
<!-- Generic Page View -->
<section>
    <div class="container">
	   (** recipe: team > main team page view **)
		<div class="influencers-page">
			(** if there is an image, show it in the header with an H1 overlay **)
			{{ if {page.image} }}
			<div class="opening-team-image" style="background-image: url({{page.image.getImage()}});">
				<h1 itemprop="name headline">{{page.title}}</h1>
			</div>
			(** else show only the h1 **)
			{{else}}
			<h1 itemprop="name headline">{{page.title}}</h1>
			{{end-if}}
			<div class="z-row">
				<div class="team-wrap">	
					<div itemprop="text">{{page.description}}</div>
					<div class="team-members">
						<div class="z-row">
						{{each influencer as influencer sort by influencer.sort asc}}
							<div class="col-1/4" itemscope="" itemtype="http://schema.org/Person">
								<a class="member" href="{{influencer.getUrl()}}" itemprop="url">
									<img itemprop="image" class="z-responsive-width" src="{{influencer.image.getImage(600,600,crop)}}" />
									<h4 itemprop="name">{{influencer.name}}</h4>
									<span itemprop="jobTitle">{{influencer.title}}</span>
								</a>
							</div>
						
						(** logic to create perfect columns and rows **)
						{{if {index} % 4 == 0}}
						</div>
						<div class="z-row">
						{{end-if}}
						
						{{end-each}}
						</div>
					</div>
				</div>
			</div>
		</div>


    </div>
</section>
