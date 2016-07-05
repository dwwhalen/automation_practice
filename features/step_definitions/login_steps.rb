Given(/^I access the login page$/) do
  #@browser = Selenium::WebDriver.for :firefox if @browser.nil?
  #@myloginpage = LoginPage.new @browser
  #@myloginpage.visit('http://phptravels.net/login/')
  create_new_browser_and_visit_login_page

end

When(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|
  #expect(@myloginpage).to be_displayed
  @myhomepage = @myloginpage.login(id, password)
end

Then(/^the home page is displayed$/) do
  sleep(3)
  expect(@myhomepage).to be_displayed
  #assertIncludes('My Account', @browser.title)
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

Given(/^I'm logged in as id "([^"]*)" and password "([^"]*)"$/) do |arg1, arg2|
  if @myhomepage.nil?
    create_new_browser_and_visit_login_page
    @myhomepage = @myloginpage.login(id, password)
  end

end

def create_new_browser_and_visit_login_page
  @myloginpage = LoginPage.new
  @myloginpage.load

  #@browser = Capybara::Session.new(:selenium)
  #@browser.visit "http://phptravels.net/login/"
  #@myloginpage = LoginPage.new @browser

end
