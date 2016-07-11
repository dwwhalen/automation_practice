class TopNavSection < SitePrism::Section
  element :hotels_link, 'a :href http://phptravels.net/hotels'
  element :tours_link, 'a.Tours'
  element :flights_link, 'a.Flights'
  element :cars_link, 'a.Cars'
  element :cars_link, 'a.Offers'
  element :cars_link, 'a.Blog'

  elements :menu_options, 'li.go-right'
  elements :user_dropdown, 'li.dropdown.pull-right'
  elements :user_dropdown, 'li.dropdown.pull-right'
  elements :logout_link, '.dropdown-menu>li>a'


  def click_link (link_id)
    menu_options[link_id].click
  end

  def logout
    user_dropdown[1].click
    logout_link[1].click
    return LoginPage.new
  end

end