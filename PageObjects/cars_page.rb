class CarsPage < SitePrism::Page

  set_url 'http://phptravels.net/cars'

  section :top_nav_section, TopNavSection, 'div.navbar-collapse'

  element :location_drop_down, "#carlocations"

end