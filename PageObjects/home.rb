class Home

  def initialize
    @current_page = HomePage.new
  end

  def title
    @current_page.title
  end

  def wait_for_page_load
    @current_page.wait_for_location_search_textbox(EXTENDED_WAIT_TIME)
    sleep 0.3 # the site_prism wait (above) has a habit of waiting a fraction of a second too short
  end

  def has_fields?
    @current_page.has_location_search_textbox?
  end

  def click_hotels_link
    @current_page.top_nav_section.click_link 1
  end

  def click_tours_link
    @current_page.top_nav_section.click_link 2
  end

  def click_flights_link
    @current_page.top_nav_section.click_link 3
  end

  def click_cars_link
    @current_page.top_nav_section.click_link 4
  end

  def click_offers_link
    @current_page.top_nav_section.click_link 5
  end

  def click_blog_link
    @current_page.top_nav_section.click_link 6
  end
end