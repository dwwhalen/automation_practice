When(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|

  LOGIN_PAGE.load_page

  if LOGIN_PAGE.title == 'Login'
    LOGIN_PAGE.login(id, password)
  end
end

And(/^the Account page is displayed$/) do
  ACCOUNT_PAGE.wait_for_page_load
  assert((ACCOUNT_PAGE.has_fields?), 'FAILURE: Not all Account fields were present when we expected them to be.')
end

When(/^I choose the Logoff link$/) do
  ACCOUNT_PAGE.choose_to_logout
end

Then(/^the Login page is displayed$/) do
  LOGIN_PAGE.wait_for_page_load
  assert((LOGIN_PAGE.has_fields?), 'FAILURE: Not all login fields were present when we expected them to be.')
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

