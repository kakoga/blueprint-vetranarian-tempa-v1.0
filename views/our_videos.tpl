<div id="office-tour">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="row body-content">
			<div class="col-md-9" >
				<h1>{{ page.page_title }}</h1>
				<div class="body-text" >
					{{ page.body_text }}
				</div>
			</div>
			<div class="container">
				{{ if {page.youtube_id} }}
				<iframe id="ytplayer" type="text/html" width="100%" src="https://www.youtube.com/embed/{{ page.youtube_id }}?rel=0" frameborder="0"></iframe>
				{{ end-if }}
			</div>
			<hr>
			<div class="row">
				{{ each office_photos as photo sort by photo.sort_order }}
				{{ if {index} % 3 == 1 && $count != 1 }}
			</div>
			<div class="row">
				{{ end-if }}
				<div class="col-md-4">
					<img src ="{{ photo.office_photo.getImage() }}" alt="{{picture.title}} photo">
					<p class="large">{{ photo.photo_title }}</p>
					<p>{{ photo.photo_description }}</p>
				</div>
				{{ end-each }}
			</div>
		</div>
	</div>
</div>
