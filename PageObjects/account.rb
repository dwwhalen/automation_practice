class Account

  def initialize
    @current_page = AccountPage.new
  end

  def wait_for_page_load
    @current_page.wait_for_bookings(EXTENDED_WAIT_TIME)
    sleep 0.3 # the site_prism wait (above) has a habit of waiting a fraction of a second too short
  end

  def has_fields?
    @current_page.has_bookings?
  end

  def choose_to_logout
    #@current_page.top_nav_section.logout
    @current_page.top_nav_section.logout
  end
end