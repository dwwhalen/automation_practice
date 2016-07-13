class HomePage < SitePrism::Page

  set_url 'http://phptravels.net'
  section :top_nav_section, TopNavSection, 'div.navbar-collapse'
  element :location_search_textbox, "#hotelsSearch_value"

end