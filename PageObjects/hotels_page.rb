class HotelsPage < SitePrism::Page

  set_url 'http://phptravels.net/hotels'

  section :top_nav_section, TopNavSection, 'div.navbar-collapse'

  element :location_textbox, "#adults"

end