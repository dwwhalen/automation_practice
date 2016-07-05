Given(/^I access the login page$/) do
  #@browser = Selenium::WebDriver.for :firefox if @browser.nil?
  #@myloginpage = LoginPage.new @browser
  #@myloginpage.visit('http://phptravels.net/login/')


  @browser = Capybara::Session.new(:selenium)
  @myloginpage = LoginPage.new @browser
  @browser.visit "http://phptravels.net/login/"

end

When(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|
  @myhomepage = @myloginpage.login(id, password)
end

Then(/^the home page is displayed$/) do
  sleep(3)
  assertIncludes('My Account', @browser.title)
  #@browser.close
end

When(/^I choose the hotel link$/) do
  @myhomepage.select_menu_item 'Hotels'
end

Then(/^the "([^"]*)" page is displayed$/) do |page_title|
  sleep(3)
  assertIncludes(page_title, @browser.title)
end

When(/^I choose the "([^"]*)" link$/) do |link_text|
  @myhomepage.select_menu_item link_text
end