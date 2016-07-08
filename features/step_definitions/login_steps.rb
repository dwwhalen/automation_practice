Given(/^I access the login page$/) do
  @current_page = LoginPage.new
  @current_page.load
end

When(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|

  @current_page = LoginPage.new
  @current_page.load

  if @current_page.title == 'Login'
    @current_page.login(id, password)
    expect(@current_page).to be_displayed
  end
end

Then(/^the Login page is displayed$/) do
  LoginPage.new
  @current_page = AccountPage.new
  @current_page.load
  expect(@current_page).to be_displayed
end

And(/^I login with id "([^"]*)" and password "([^"]*)" and remember me is "([^"]*)"$/) do |id, password, remember_me|
  @current_page.login(id, password)
end

And(/^I close the browser$/) do
  Capybara.current_session.driver.browser.quit
  Capybara.register_driver :selenium
end

And(/^the Account page is displayed$/) do
  @current_page = AccountPage.new
  expect(@current_page).to be_displayed
end