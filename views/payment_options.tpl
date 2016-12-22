<div id="payment-options">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="body-content" >
			<div class="row">
				<div class="col-md-9" >
					<h1>{{ page.page_title }}</h1>
					<div class="body-text" >
						{{ page.body_text }}
					</div>
					<div class="row">
						<ul>
							{{ each payment_opts as opts sort by opts.sort_order }}
							<li>{{ opts.payment_type }}</li>
							{{ end-each }}
						</ul>
						<div class="row">
							{{ each payment_opts as po sort by po.sort_order }}
							<div class="col-md-3">
								<img src="{{ opts.pay_type_image.getImage() }}" alt="{{ opts.payment_type }} image">
							</div>
						</div>
						{{ end-each }}
					</div>
				</div>
				<div class="col-md-3" >
					{{ include sectionlinks }}
					{{ include inner-page-sidebar }}
				</div>
			</div>
		</div>
	</div>
</div>
