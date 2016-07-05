class LoginPage < BasePage

  def login id, password
    @browser.find_element(:name, "username").send_keys id
    @browser.find_element(:name, "password").send_keys password
    @browser.find_element(:class, 'loginbtn').click

    HomePage.new @browser
  end

end