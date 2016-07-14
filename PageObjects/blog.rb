class Blog < Base

  def initialize
    @current_page = BlogPage.new
  end

  def has_fields?
    @current_page.has_responsive_image?
  end

  def wait_for_page_load
    @current_page.wait_for_responsive_image(EXTENDED_WAIT_TIME)

    sleep 0.3 # the site_prism wait (above) has a habit of waiting a fraction of a second too short

  end

end