require 'yaml'

Given("open the website the user on the login page") do
    visit 'https://automation-sandbox-python-mpywqjbdza-uc.a.run.app/'
end
  
When("fill login details") do

    user = $credenciais['default']['user']
    password = $credenciais['default']['password']

    login_page.fill_login_fields(user, password)
end

When("click the button {string}") do |click|
    login_page.click_login(click)
end
  
Then("the user will be on the page Invoice List.") do
    login_page.wait_until_text_validation_visible
    expect(login_page).to have_content 'Invoice List'
end

When("fill login {string}") do |usarname|
    user = $credenciais[usarname]['user']
    password = $credenciais[usarname]['password']
    login_page.fill_multi_users(user, password)
end

Then("the user will be on see the message {string}") do |message_error|
    login_page.wait_until_alert_error_visible
    expect(login_page).to have_content (message_error)
end