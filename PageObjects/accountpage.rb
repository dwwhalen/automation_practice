class AccountPage < SitePrism::Page

  set_url 'http://phptravels.net/account/'

  section :top_nav_section, TopNavSection, 'div.navbar-collapse'

end