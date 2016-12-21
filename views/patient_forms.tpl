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
					<hr>
					<div class="row">
						{{ each online_forms as of sort by of.sort_order }}
						{{ if {index} > 2 }}
					</div>
					<div class="row">
						{{ end-if }}
						<div class="col-xs-6">
							<div class="form-rows">
								<p class="large">{{ of.form_title }}</p>
								<p>{{ of.form_description }}</p>
								<a href="{{ of.form_pdf.getMediaUrl() }}" target="blank"><i class="fa fa-file-pdf-o" aria-hidden="true"></i> Download Form</a>
							</div>
						</div>
						{{ end-each }}
					</div>
					<form class="form-group">
						<div class="row" >
							<h5>Owner Information</h5>
							<hr>
							<div class="form-group col-xs-6">
								<label for="firstname">First Name</label>
								<input type="text" name="first_name" class="form-control" id="firstname" placeholder="Jane">
							</div>
							<div class="form-group col-xs-6">
								<label for="lastname">Last Name</label>
								<input type="text" name="last_name" class="form-control" id="lastname" placeholder="Doe">
							</div>
							<div class="form-group col-xs-6">
								<label for="email">Email</label>
								<input type="email" name="email" class="form-control" id="email" placeholder="jane.doe@example.com">
							</div>
							<div class="form-group col-xs-6">
								<label for="phone">Phone</label>
								<input type="tel" name="phone" class="form-control" id="phone" placeholder="888.555.5555">
							</div>
							{{ if {page.default_fields} == 'patient_address' }}
							<div class="form-group col-xs-12">
								<label for="streetaddress">Street Address</label>
								<input type="text" name="streetaddress" class="form-control" id="streetaddress" placeholder="Street Address">
							</div>
							<div class="form-group col-xs-4">
								<label for="city">City</label>
								<input type="text" name="city" class="form-control" id="city" placeholder="City">
							</div>
							<div class="form-group col-xs-4">
								<label for="state">State</label>
								<input type="text" name="state" class="form-control" id="state" placeholder="State">
							</div>
							<div class="form-group col-xs-4">
								<label for="zipcode">Zip Code</label>
								<input type="text" name="zipcode" class="form-control" id="zipcode" placeholder="Zip Code">
							</div>
							<div class="clear-fix"></div>
							{{ else if {page.default_fields} == 'patient_address_and_pet_info' }}
							<div class="form-group col-xs-12">
								<label for="streetaddress">Street Address</label>
								<input type="text" name="streetaddress" class="form-control" id="streetaddress" placeholder="Street Address">
							</div>
							<div class="form-group col-xs-4">
								<label for="city">City</label>
								<input type="text" name="city" class="form-control" id="city" placeholder="City">
							</div>
							<div class="form-group col-xs-4">
								<label for="state">State</label>
								<input type="text" name="state" class="form-control" id="city" placeholder="State">
							</div>
							<div class="form-group col-xs-4">
								<label for="zipcode">Zip Code</label>
								<input type="text" name="zipcode" class="form-control" id="ezipcode" placeholder="Zip Code">
							</div>
							<div class="clear-fix"></div>
							<h5>Pet Information</h5>
							<hr>
							<!-- Pet 1 -->
							<div class="form-group col-xs-4">
								<label for="petname"> Pet's Name</label>
								<input type="text" name="petname"  class="form-control" id="petname" placeholder="Spot">
							</div>
							<div class="form-group col-xs-4">
								<label for="petsspecies">Pet's Species</label>
								<select class="form-control" id="petspecies">
									<option>Dog</option>
									<option>Cat</option>
									<option>Small Animal: rat, hamster, guinea pig</option>
									<option>Herptiles: turtle, snake</option>
								</select>
							</div>
							<div class="form-group col-xs-2">
								<label for="petssex">Pet's Sex</label>
								<select class="form-control" name="spayneuter" id="petssex">
									<option>Male</option>
									<option>Female</option>
								</select>
							</div>
							<div class="form-group col-xs-2">
								<label for="spayneuter">Select One:</label>
								<select class="form-control" name="spayneuter" id="spayneuter">
									<option>Neutered</option>
									<option>Spayed</option>
									<option>N/A</option>
								</select>
							</div>
							<div class="clear-fix"></div>
							{{ end-if }}
						</div>
						<div class="row">
							<div class=" col-xs-12">
								{{ each custom_form_fields as form sort by form.sort_order }}
								<!-- name/text/toggle -->
								{{ if {form.field_type_toggle} == 0 }}
								<div class="form-group">
									<label for="id{{form.zid}}">{{ form.custom_field_name }}</label>
									<input name="{{ form.custom_form_name }}" type="text" class="form-control" id="id{{form.zid}}" />
								</div>
								{{ else }}
								<div class="form-group">
									<label for="id{{form.zid}}">{{ form.custom_field_name }}</label>
									<textarea name="{{ form.custom_form_name }}" class="form-control" id="id{{form.zid}}" rows="3"></textarea>
								</div>
								{{ end-if }}
								{{ end-each }}
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
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
