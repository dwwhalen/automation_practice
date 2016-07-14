class Offers < Base

  def initialize
    @current_page = OffersPage.new
  end

  def has_fields?
    @current_page.has_wish_list?
  end

  def wait_for_page_load
    @current_page.wait_for_wish_list(EXTENDED_WAIT_TIME)

    sleep 0.3 # the site_prism wait (above) has a habit of waiting a fraction of a second too short

  end

end