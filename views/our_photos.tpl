<div id="our-photos">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="body-content" >
			<div class="row">
				<div class="col-md-9" >
					<h1>{{ page.page_title }}</h1>
					<div class="body-text" >
						{{ page.body_text }}
					</div>
					{{ each about_us_photos as picture sort by picture.sort_order }}
					<div class="row">
						<div class="col-md-4">
							{{ picture.about_us_photo.getImage() }}
							{{ picture.photo_title }}
							{{ picture.photo_description }}
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
