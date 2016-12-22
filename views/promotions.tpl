<div id="promotions">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="body-content">
			<div class="row">
				<div class="col-md-9">
					<div class="title-border">
						<h1>{{ page.page_title }}</h1>
					</div>
					{{ page.body_text }}
					<div class=" row promo-offers">
						{{ each promo as deal sort by deal.sort_order }}
						<div class="row">
							<div class="col-md-4 promo-detail">
								<span class="pull-right"><img class="promo-image" src="{{ deal.promo_image.getImage() }}"></span>
							</div>
							<div class="col-md-8">
								<div>{{ deal.promo_title }}</div>
								<div>{{ deal.promo_description }}</div>
								<div>Promo code: {{ deal.promo_code }}</div>
								<a href"{{ deal.promo_print_coupon }}" target="blank">Click for printable coupon</a>
							</div>
						</div>
						{{ end-each }}
					</div>
				</div>
				<div class="col-md-3" >
					{{ include inner-page-sidebar }}
				</div>
			</div>
		</div>
	</div>
</div>
