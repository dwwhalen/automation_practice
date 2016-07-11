When(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|

  @login_page = LoginPage.new
  @login_page.load

  if @login_page.title == 'Login'
    @account_page = @login_page.login(id, password)
  end
end

And(/^the Account page is displayed$/) do
  expect(@account_page).to be_displayed
end

When(/^I choose the Logoff link$/) do
  @account_page.top_nav_section.logout
end

Then(/^the Login page is displayed$/) do
  expect(@login_page).to be_displayed
end

####################
#
# And(/^I login with id "([^"]*)" and password "([^"]*)" and remember me is "([^"]*)"$/) do |id, password, remember_me|
#   @login_page.login(id, password)
# end
#
# And(/^I close the browser$/) do
#   Capybara.current_session.driver.browser.quit
#   Capybara.register_driver :selenium
# end

