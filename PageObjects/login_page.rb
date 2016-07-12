class LoginPage < SitePrism::Page
  set_url 'http://phptravels.net/login'

  section :top_nav_section, TopNavSection, 'div.navbar-collapse'

  element :username_field, "input[name='username']"
  element :password_field, "input[name='password']"
  element :remember_me_checkbox, "#remember-me"
  element :facebook, :xpath, "html/body/div[8]/div/div[2]/div[4]/div[2]/a[1]/img"
  element :twitter, :xpath, "html/body/div[8]/div/div[2]/div[4]/div[2]/a[2]/img"
  element :googleplus, :xpath, "html/body/div[8]/div/div[2]/div[4]/div[2]/a[3]/img"

  elements :forgot_password, ".whitelink"
  elements :social_media_elements, ".social-icons-footer"
  element :login_button, "button[type='submit']", :text => 'Login'
  element :contact, :xpath, "html/body/div[8]/div/div[4]/ul/li[1]/a"



end