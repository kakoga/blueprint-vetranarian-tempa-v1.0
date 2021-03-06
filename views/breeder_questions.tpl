<div id="breeder-questions">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="body-content" >
			<div class="row">
				<div class="col-lg-3 col-md-4 mobile" >
					<div class="mobile">
						{{ include sectionlinks }}
					</div>
				</div>
				<div class="col-lg-9 col-md-8" >
					<div class="title-border">
						<h1>{{ page.page_title }}</h1>
					</div>
					<div class="body-text" >
						{{ page.body_text }}
					</div>
					{{ each breeder_q as question sort by question.sort_order }}
					<div class="row">
						<div class="col-md-12">
							<p>{{ question.question }}</p>
							<p>{{ question.answer }}</p>
							<hr>
						</div>
					</div>
					{{end-each }}
				</div>
				<div class="col-lg-3 col-md-4" >
					<div class="desktop">
						{{ include sectionlinks }}
						{{ include inner-page-sidebar }}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
