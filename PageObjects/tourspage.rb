class ToursPage < SitePrism::Page

  set_url 'http://phptravels.net/tours'

  section :top_nav_section, TopNavSection, 'div.navbar-collapse'

end