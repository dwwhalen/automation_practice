class Hotels

  def initialize
    @current_page = HotelsPage.new
  end

  def title
    @current_page.title
  end

  def wait_for_page_load
    @current_page.wait_for_location_textbox(EXTENDED_WAIT_TIME)
    sleep 0.3 # the site_prism wait (above) has a habit of waiting a fraction of a second too short
  end

  def has_fields?
    @current_page.has_location_textbox?
  end

end