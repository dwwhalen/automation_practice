class FlightsPage < SitePrism::Page

  set_url 'http://phptravels.net/flightsd'

  section :top_nav_section, TopNavSection, 'div.navbar-collapse'

  #element :departure_textbox, 'departPlace'
  #element :departure_textbox, :xpath, "html/body/div[2]/section/div/div/div/section/div[1]/div[1]/div/form/div/div[1]/div[1]/div/div[1]/input[1]"
  element :departure_textbox, '.navbar-header.go-right'

end