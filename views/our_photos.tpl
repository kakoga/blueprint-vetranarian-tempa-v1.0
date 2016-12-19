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
					<div class="row">
						{{ each about_us_photos as picture sort by picture.sort_order }}
						{{ if {index} % 3 == 1 && $count != 1 }}
					</div>
					<div class="row">
						{{ end-if }}
						<div class="col-md-4">
							<img src ="{{ picture.about_us_photo.getImage() }}" alt="{{picture.title}} photo">
							<p class="large">{{ picture.photo_title }}</p>
							<p>{{ picture.photo_description }}</p>
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
