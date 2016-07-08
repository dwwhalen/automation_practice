class LoginPage < SitePrism::Page
  set_url 'http://phptravels.net/login'

  section :top_nav_section, TopNavSection, 'div.navbar-collapse'

  element :username_field, "input[name='username']"
  element :password_field, "input[name='password']"
  element :remember_me_checkbox, "#remember-me"
  element :login_button, "button[type='submit']", :text => 'Login'

  def login id, password
    #@browser.find_element(:name, "username").send_keys id
    #@browser.find_element(:name, "password").send_keys password
    #@browser.find_element(:class, 'loginbtn').click

    #@browser.fill_in('username', :with => id)
    #@browser.fill_in('password', :with => password)

    username_field.set(id)
    password_field.set(password)
    remember_me_checkbox.click
    login_button.click
    #HomePage.new
  end

end