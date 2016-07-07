Given(/^I access the login page$/) do
  create_new_browser_and_visit_login_page
end

When(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|
  @current_page = @current_page.login(id, password)
end

Then(/^the (.*) page is displayed$/) do |expected_page_title|
  case expected_page_title.downcase
    when 'home'
      expect_page_object = @current_page
    when 'login'
      expect_page_object = @current_page
    when 'hotels'
      expect_page_object = @current_page
    when 'tours'
      expect_page_object = @current_page
    else
      puts 'invalid page title: ' + expected_page_title.downcase
  end

  expect(expect_page_object).to be_displayed
  expect(expect_page_object).to have_top_nav_section

  expect(@current_page).to be_displayed
  expect(@current_page).to have_top_nav_section
end

When(/^I choose the (.*) link$/) do |link_text_to_click|
  case link_text_to_click.downcase
    when 'hotels'
      @current_page = @current_page.top_nav_section.click_hotels
    when 'tours'
      @current_page = @current_page.top_nav_section.click_tours
  end

end

Given(/^I'm logged in as id "([^"]*)" and password "([^"]*)"$/) do |arg1, arg2|

  if @current_page.nil?
    create_new_browser_and_visit_login_page
    @current_page = @current_page.login(id, password)
  end

end

def create_new_browser_and_visit_login_page
  @current_page = LoginPage.new
  @current_page.load
end
