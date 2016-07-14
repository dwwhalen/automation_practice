class Cars < Base

  def initialize
    @current_page = CarsPage.new
  end

  def has_fields?
    @current_page.has_location_drop_down?
  end

  def wait_for_page_load
    x = EXTENDED_WAIT_TIME
    @current_page.wait_for_location_drop_down(EXTENDED_WAIT_TIME)

    sleep 0.3 # the site_prism wait (above) has a habit of waiting a fraction of a second too short

  end

end