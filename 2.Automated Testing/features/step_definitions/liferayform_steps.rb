Given("that i access the form page") do
    @liferayform.access
end
  
When("i submit the form by filling in the required fields2") do
    @liferayform.fill_all_fields
    @liferayform.submit
end
  
When("i submit the form by filling in the required fields:") do |table|
    @fields = table.rows_hash
    @liferayform.fill_all_fields(@fields)
    @liferayform.submit
end

Then("i should see the message {string}") do |msg|
    expect(@liferayform.form_description_success).to eql msg
end

When("i submit the form without fill any required fields") do
    @liferayform.submit
end

Then("i should see the message {string} for the fields:") do |msg, table|
    fields_names = table.transpose.raw.flatten
    fields_names.each { |name|
        expect(Helper.field_empty_msg(name)).to eql msg
    }
end
  