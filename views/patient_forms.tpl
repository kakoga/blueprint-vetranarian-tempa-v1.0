<div id="patient-forms">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="body-content" >
			<div class="row">
				<div class="col-md-9" >
					<h1>{{ page.page_title }}</h1>
					<div class="body-text" >
						{{ page.body_text }}
					</div>

					<form class="form-group">
						<h5>Owner Information</h5>
						<hr>
						<div class="form-group col-xs-6">
							<label for="exampleInputName2">First Name</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="Jane">
						</div>
						<div class="form-group col-xs-6">
							<label for="exampleInputName2">Last Name</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="Doe">
						</div>
						<div class="form-group col-xs-6">
							<label for="exampleInputEmail2">Email</label>
							<input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
						</div>
						<div class="row"></div>
						<h5>Pet Information</h5>
						<hr>
						<!-- Pet 1 -->
						<div class="form-group col-xs-4">
							<label for="exampleInputName2"> Pet's Name</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="Spot">
						</div>
						<div class="form-group col-xs-4">
							<label for="exampleSelect1">Pet's Species</label>
							<select class="form-control" id="exampleSelect1">
								<option>Dog</option>
								<option>Cat</option>
								<option>Small Animal: rat, hamster, guinea pig</option>
								<option>Herptiles: turtle, snake</option>
							</select>
						</div>
						<div class="form-group col-xs-2">
							<label for="exampleSelect1">Pet's Sex</label>
							<select class="form-control" id="exampleSelect1">
								<option>Male</option>
								<option>Female</option>
							</select>
						</div>
						<div class="form-group col-xs-2">
							<label for="exampleSelect1">Select One:</label>
							<select class="form-control" id="exampleSelect1">
								<option>Neutered</option>
								<option>Spayed</option>
								<option>N/A</option>
							</select>
						</div>
						<!-- Pet 2 -->
						<div class="form-group col-xs-4">
							<label for="exampleInputName2"> Pet's Name</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="Spot">
						</div>
						<div class="form-group col-xs-4">
							<label for="exampleSelect1">Pet's Species</label>
							<select class="form-control" id="exampleSelect1">
								<option>Dog</option>
								<option>Cat</option>
								<option>Small Animal: rat, hamster, guinea pig</option>
								<option>Herptiles: turtle, snake</option>
							</select>
						</div>
						<div class="form-group col-xs-2">
							<label for="exampleSelect1">Pet's Sex</label>
							<select class="form-control" id="exampleSelect1">
								<option>Male</option>
								<option>Female</option>
								<option>N/A</option>
							</select>
						</div>
						<div class="form-group col-xs-2">
							<label for="exampleSelect1">Select One:</label>
							<select class="form-control" id="exampleSelect1">
								<option>Neutered</option>
								<option>Spayed</option>
								<option>N/A</option>
							</select>
						</div>
						<!-- Pet 3 -->
						<div class="form-group col-xs-4">
							<label for="exampleInputName2"> Pet's Name</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="Spot">
						</div>
						<div class="form-group col-xs-4">
							<label for="exampleSelect1">Pet's Species</label>
							<select class="form-control" id="exampleSelect1">
								<option>Dog</option>
								<option>Cat</option>
								<option>Small Animal: rat, hamster, guinea pig</option>
								<option>Herptiles: turtle, snake</option>
							</select>
						</div>
						<div class="form-group col-xs-2">
							<label for="exampleSelect1">Pet's Sex</label>
							<select class="form-control" id="exampleSelect1">
								<option>Male</option>
								<option>Female</option>
							</select>
						</div>
						<div class="form-group col-xs-2">
							<label for="exampleSelect1">Select One:</label>
							<select class="form-control" id="exampleSelect1">
								<option>Neutered</option>
								<option>Spayed</option>
								<option>N/A</option>
							</select>
						</div>
						<div class="row"></div>
						<div class="form-group">
							<label for="exampleTextarea">Comments</label>
							<textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Send invitation</button>
					</form>

				</div>
				<div class="col-md-3" >
					{{ include sectionlinks }}
					{{ include inner-page-sidebar }}
				</div>
			</div>
		</div>
	</div>
</div>
