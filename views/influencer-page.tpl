
<!-- Generic Page View -->
<section>
    <div class="container">
	    (** recipe: team > single team member view **)
		<div class="team-member" itemscope="" itemtype="http://schema.org/Person">
			<h1 itemprop="name">{{page.name}}</h1>
			<div class="z-row">
				<div class="col-2/3">
					<div class="team-wrap">
						<img src="{{page.image.getImage()}}" class="z-responsive-width" itemprop="image" align="left">
						<h4 itemprop="jobTitle">{{page.title}}</h4>
						{{if {page.phone} }}
						<h6>Phone</h6>
						<a itemprop="telephone" href="{{page.phone.obfuscate()}}">{{page.phone.obfuscate()}}</a><br><br>
						{{end-if}}
						{{if {page.email} }}
						<h6>Email</h6>
						<a itemprop="email" href="{{page.email.obfuscate()}}">{{page.email.obfuscate()}}</a><br><br>
						{{end-if}}
						{{if {page.education} }}
						<h6>Education</h6>
						<div itemprop="alumniOf">{{page.education}}</div>
						{{end-if}}
						<h6>Bio</h6>
						<div class="description" itemprop="description">{{page.description}}</div>
						<div>{{page.misc}}</div>
					</div>
				</div>
				<div class="col-1/3">
					<div class="side-bar">
						<div class="widget">
							{{bootstrap.sectionlinks(true)}}
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
</section>
