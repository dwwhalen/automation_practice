class TopNavSection < SitePrism::Section
  element :hotels_link, 'a :href http://phptravels.net/hotels'
  element :tours_link, 'a.Tours'
  element :flights_link, 'a.Flights'
  element :cars_link, 'a.Cars'
  element :cars_link, 'a.Offers'
  element :cars_link, 'a.Blog'

  elements :menu_options, 'li.go-right'

  def click_link (link_id)
    menu_options[link_id].click
  end

end