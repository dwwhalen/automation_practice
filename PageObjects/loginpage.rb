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



  def login id, password
    @test_value = 'test value'
    #@browser.find_element(:name, "username").send_keys id
    #@browser.find_element(:name, "password").send_keys password
    #@browser.find_element(:class, 'loginbtn').click

    #@browser.fill_in('username', :with => id)
    #@browser.fill_in('password', :with => password)

    username_field.set(id)
    password_field.set(password)
    remember_me_checkbox.click
    login_button.click
    return AccountPage.new
  end

  def click_on_facebook
    facebook.click
    return ExternalPage.new
  end

  def click_on_twitter
    twitter.click
    return ExternalPage.new
  end

  def click_on_googleplus
    googleplus.click
    return ExternalPage.new
  end

  def click_on_contact

    contact.click
    return ExternalPage.new
  end

end