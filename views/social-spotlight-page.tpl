
<!-- Generic Page View -->
<section id="portfolio" class="bg-light-gray">
    <div class="container">
	    <h1>{{page.title}}</h1>
	    {{page.content}}
	    
	    <div class="row">
			{{each social_feed as social}}
			
			{{include social-loop}}
			
			{{end-each}}
        </div>
	    
    </div>
</section>
