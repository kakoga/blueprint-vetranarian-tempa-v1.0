
<!-- Generic Page View -->
<section>
    <div class="container">
	   
		<div class="influencer" itemscope="" itemtype="http://schema.org/Product">
			<a href="{{product.where_to_buy_link}}" class="btn btn-primary pull-right"><span class="fa fa-shopping-cart"></span> Buy Now</a>
			<h1 itemprop="name">{{page.name}}</h1>
			<br>
			<div class="row">
				<div class="col-md-7">
					<div class="team-wrap">
						<img src="{{page.main_image.getImage()}}" class="img-responsive" itemprop="image">
						<h4 itemprop="jobTitle">{{page.title}}</h4>
						
						
					</div>
				</div>
				<div class="col-md-5">
					
					<div class="description" itemprop="description">{{page.description}}</div>
					<hr>
					<div class="description" itemprop="specifications">{{page.specs}}</div>
					<br>
					<a href="{{product.where_to_buy_link}}" class="btn btn-primary btn-sm"><span class="fa fa-shopping-cart"></span> Buy Now</a>
					
				</div>
			</div>
		</div>
    </div>
</section>
