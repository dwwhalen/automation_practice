
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
  HOME_PAGE.click_cars_link
end

Then(/^the Cars page is displayed$/) do
  CARS_PAGE.wait_for_page_load
  assert((CARS_PAGE.has_fields?), 'FAILURE: Not all Cars fields were present when we expected them to be.')
end

When(/^I choose the Offers link$/) do
  HOME_PAGE.click_offers_link
end

Then(/^the Offers page is displayed$/) do
  OFFERS_PAGE.wait_for_page_load
  assert((OFFERS_PAGE.has_fields?), 'FAILURE: Not all Offers fields were present when we expected them to be.')
end

When(/^I choose the Blog link$/) do
  HOME_PAGE.click_blog_link
end

Then(/^the Blog page is displayed$/) do
  BLOG_PAGE.wait_for_page_load
  assert((BLOG_PAGE.has_fields?), 'FAILURE: Not all Blog fields were present when we expected them to be.')
end



