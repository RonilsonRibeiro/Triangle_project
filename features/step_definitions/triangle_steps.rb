Given("I am in TrianguloApp") do
    @base = BaseScreen.new
    @base.wait_for_id($side1)
end

When("I set the first side as {int}") do |value1|    
    @base.send_keys_id($side1, value1)
end

When("set the second side as {int}") do |value2|    
    @base.send_keys_id($side2, value2)
end

When("set the third side as {int}") do |value3|    
    @base.send_keys_id($side3, value3)
end

When("calculate") do
    @base.click_id($calculete)
end

Then("the app inform me {string}") do |triangle_type|
    @base.text_validator(triangle_type)
end