class OffersPage < SitePrism::Page

  set_url 'http://phptravels.net/offers'

  section :top_nav_section, TopNavSection, 'div.navbar-collapse'

  element :wish_list, ".img-responsive"

end