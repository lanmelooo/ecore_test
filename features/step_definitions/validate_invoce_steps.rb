When("click on the link for Invoice Details") do 
    validate_invoce_page.click_invoce_details
end
  
Then("validating the informations") do 
    validate_invoce_page.information_validation
end
