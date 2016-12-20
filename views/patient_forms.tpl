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
							<input type="text" name="first_name" class="form-control" id="exampleInputName1" placeholder="Jane">
						</div>
						<div class="form-group col-xs-6">
							<label for="exampleInputName2">Last Name</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="Doe">
						</div>
						<div class="form-group col-xs-6">
							<label for="exampleInputEmail2">Email</label>
							<input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
						</div>
						<div class="form-group col-xs-6">
							<label for="exampleInputEmail2">Phone</label>
							<input type="tel" class="form-control" id="exampleInputPhone" placeholder="888.555.5555">
						</div>
						{{ if {page.default_fields} == 'patient_address' }}
						<div class="form-group col-xs-12">
							<label for="exampleInputName2">Street Address</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="Street Address">
						</div>
						<div class="form-group col-xs-4">
							<label for="exampleInputName2">City</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="City">
						</div>
						<div class="form-group col-xs-4">
							<label for="exampleInputName2">State</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="State">
						</div>
						<div class="form-group col-xs-4">
							<label for="exampleInputName2">Zip Code</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="Zip Code">
						</div>
						<div class="clear-fix"></div>
						{{ else if {page.default_fields} == 'patient_address_and_pet_info' }}
						<div class="form-group col-xs-12">
							<label for="exampleInputName2">Street Address</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="Street Address">
						</div>
						<div class="form-group col-xs-4">
							<label for="exampleInputName2">City</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="City">
						</div>
						<div class="form-group col-xs-4">
							<label for="exampleInputName2">State</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="State">
						</div>
						<div class="form-group col-xs-4">
							<label for="exampleInputName2">Zip Code</label>
							<input type="text" class="form-control" id="exampleInputName2" placeholder="Zip Code">
						</div>
						<div class="clear-fix"></div>
						<h5>Pet Information</h5>
						<hr>
					<!-- Pet 1 -->
						<div class="form-group col-xs-4">
							<label for="exampleInputName2"> Pet's Name</label>
							<input name="" type="text" class="form-control" id="exampleInputName2" placeholder="Spot">
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
						{{ end-if }}
						{{ each }}
						<!-- name/text/toggle -->
						{{ if {set.toggle} == 1 }}
						<div class="form-group">
							<label for="set.name_field">set.name_field</label>
							<input type="text" class="form-control" id="set.name_field" />
						</div>
						{{ else }}
						<div class="form-group">
							<label for="set.name_field">set.name_field</label>
							<textarea class="form-control" id="set.name_field" rows="3"></textarea>
						</div>
						{{ end-if }}
						{{ end-each }}
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
