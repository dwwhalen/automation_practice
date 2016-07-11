
When(/^I choose the Home link$/) do
  @login_page.top_nav_section.click_link 0
end

Then(/^the Home page is displayed$/) do
  @login_page = HomePage.new
  expect(@login_page).to be_displayed
end

When(/^I choose the Hotels link$/) do
  @login_page.top_nav_section.click_link 1
end

Then(/^the Hotels page is displayed$/) do
  @login_page = HotelsPage.new
  expect(@login_page).to be_displayed
end

When(/^I choose the Tours link$/) do
  @login_page.top_nav_section.click_link 2
end

Then(/^the Tours page is displayed$/) do
  @login_page = ToursPage.new
  expect(@login_page).to be_displayed
end

When(/^I choose the Flights link$/) do
  @login_page.top_nav_section.click_link 3
end

Then(/^the Flights page is displayed$/) do
  @login_page = FlightsPage.new
  expect(@login_page).to be_displayed
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



