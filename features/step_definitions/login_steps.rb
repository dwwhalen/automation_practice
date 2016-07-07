Given(/^I access the login page$/) do
  @current_page = LoginPage.new
  @current_page.load
end

When(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|
  @current_page.login(id, password)
end

Then(/^the Login page is displayed$/) do
  @current_page = LoginPage.new
  expect(@current_page).to be_displayed
end

Then(/^the Home page is displayed$/) do
  @current_page = HomePage.new
  expect(@current_page).to be_displayed
end