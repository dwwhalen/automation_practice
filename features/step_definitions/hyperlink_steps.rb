And(/^the user opens a browser and navigates to the "([^"]*)" page$/) do |arg|
  @login_page = LoginPage.new
  @login_page.load
end


When(/^the user selects the "([^"]*)" option$/) do |hyperlink_to_click|

  case hyperlink_to_click.gsub(" ", "_").downcase
    when "twitter"
      @hyperlinked_page = @login_page.click_on_twitter
    when "facebook"
      @hyperlinked_page = @login_page.click_on_facebook
    when "google_plus"
      @hyperlinked_page = @login_page.click_on_googleplus
    else
      puts "invalid hyperlink_to_click: " + hyperlink_to_click
  end
end

Then(/^the URL "([^"]*)" will be displayed$/) do |expected_url|
  Capybara.current_session.driver.browser.switch_to.window(page.driver.browser.window_handles.last)

  expect(@hyperlinked_page.current_url.downcase).to include expected_url.downcase
end