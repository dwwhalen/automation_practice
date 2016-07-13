
When(/^I choose the Home link$/) do
  ACCOUNT_PAGE.click_home_link
end

Then(/^the Home page is displayed$/) do
  HOME_PAGE.wait_for_page_load
  assert((HOME_PAGE.has_fields?), 'FAILURE: Not all Home fields were present when we expected them to be.')
end

When(/^I choose the Hotels link$/) do
  HOME_PAGE.click_hotels_link
end

Then(/^the Hotels page is displayed$/) do
  HOTELS_PAGE.wait_for_page_load
  assert((HOTELS_PAGE.has_fields?), 'FAILURE: Not all Hotels fields were present when we expected them to be.')

end

When(/^I choose the Tours link$/) do
  HOME_PAGE.click_tours_link
end

Then(/^the Tours page is displayed$/) do
  TOURS_PAGE.wait_for_page_load
  assert((TOURS_PAGE.has_fields?), 'FAILURE: Not all Tours fields were present when we expected them to be.')
end

When(/^I choose the Flights link$/) do
  HOME_PAGE.click_flights_link
end

Then(/^the Flights page is displayed$/) do
  FLIGHTS_PAGE.wait_for_page_load
  assert((FLIGHTS_PAGE.has_fields?), 'FAILURE: Not all Flights fields were present when we expected them to be.')
end

When(/^I choose the Cars link$/) do
  @login_page.top_nav_section.click_link 4
end

Then(/^the Cars page is displayed$/) do
  @login_page = CarsPage.new
  expect(@login_page).to be_displayed
end

When(/^I choose the Offers link$/) do
  @login_page.top_nav_section.click_link 5
end

Then(/^the Offers page is displayed$/) do
  @login_page = OffersPage.new
  expect(@login_page).to be_displayed
end

When(/^I choose the Blog link$/) do
  @login_page.top_nav_section.click_link 6
end

Then(/^the Blog page is displayed$/) do
  @login_page = BlogPage.new
  expect(@login_page).to be_displayed
end



