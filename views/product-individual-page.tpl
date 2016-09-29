
<!-- Generic Page View -->
<section>
    <div class="container">
	   
		<div class="influencer" itemscope="" itemtype="http://schema.org/Product">
			<h1 itemprop="name">{{page.name}}</h1>
			<hr>
			<div class="row">
				<div class="col-md-8">
					<div class="team-wrap">
						<img src="{{page.image.getImage()}}" class="img-responsive" itemprop="image">
						<h4 itemprop="jobTitle">{{page.title}}</h4>
						
						
					</div>
				</div>
				<div class="col-md-4">
					
					<div class="description" itemprop="description">{{page.description}}</div>
					<hr>
					<div class="description" itemprop="specifications">{{page.description}}</div>
					<hr>
					<a href="{{product.where_to_buy_link}}" class="btn btn-primary btn"><span class="fa fa-shopping-cart"></span> Buy Now</a>
					
				</div>
			</div>
		</div>
    </div>
</section>
