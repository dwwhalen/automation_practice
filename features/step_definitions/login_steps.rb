Given(/^I access the login page$/) do
  create_new_browser_and_visit_login_page

end

When(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|
  @my_home_page = @my_login_page.login(id, password)
end

Then(/^the home page is displayed$/) do
  expect(@my_home_page).to be_displayed
end

When(/^I choose the hotel link$/) do
  @my_hotels_page = @my_home_page.top_nav_section.click_hotels
end


Then(/^the hotels page is displayed$/) do
  expect(@my_hotels_page).to be_displayed

end

Given(/^I'm logged in as id "([^"]*)" and password "([^"]*)"$/) do |arg1, arg2|

  if @my_home_page.nil?
    create_new_browser_and_visit_login_page
    @my_home_page = @my_login_page.login(id, password)
  end

end

def create_new_browser_and_visit_login_page

  @my_login_page = LoginPage.new
  @my_login_page.load

end
