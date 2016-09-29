
<!-- Generic Page View -->
<section>
    <div class="container">
	    (** recipe: team > single team member view **)
		<div class="influencer" itemscope="" itemtype="http://schema.org/Person">
			<h1 itemprop="name">Meet {{page.name}}</h1>
			<h4 itemprop="jobTitle" class="section-subheading text-muted">{{page.title}}</h4>
			<div class="row">
				<div class="col-md-8">
					<div class="team-wrap">
						<img src="{{page.image.getImage()}}" class="img-responsive" itemprop="image">
						
					</div>
				</div>
				<div class="col-md-4">
					
					<div class="description" itemprop="description">{{page.description}}</div>
					<div>{{page.misc}}</div>
					<hr>
					<h4>{{page.name}}'s favorite {{clippings.product_nick_name}}!</h4>
					{{each products as product where product.zid = {page.favorite_product} limit 1}}
					<a href="{{product.where_to_buy_link}}" class="pull-right btn btn-primary btn-sm"><span class="fa fa-shopping-cart"></span> Buy</a>
					
					<h6>{{product.name}}</h6>
					<img src="{{product.main_image.getImage()}}" class="img-responsive">
					
					
					{{end-each}}
				</div>
			</div>
		</div>
    </div>
</section>
