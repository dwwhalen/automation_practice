class FlightsPage < SitePrism::Page

  set_url 'http://phptravels.net/flightsd'

  section :top_nav_section, TopNavSection, 'div.navbar-collapse'

end