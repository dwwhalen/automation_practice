class Tours

  def initialize
    @current_page = ToursPage.new
  end

  def title
    @current_page.title
  end

  def wait_for_page_load
    x = EXTENDED_WAIT_TIME
    @current_page.wait_for_tour_type_drop_down(EXTENDED_WAIT_TIME)
    sleep 0.3 # the site_prism wait (above) has a habit of waiting a fraction of a second too short

  end

  def has_fields?
    @current_page.has_tour_type_drop_down?
  end

  def load_page
    @current_page.load
    #Capybara.current_session.driver.browser.manage.window.maximize
  end


end