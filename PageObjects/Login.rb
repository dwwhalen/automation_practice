class Login

    def initialize
      @current_page = LoginPage.new
    end

    def title
      @current_page.title
    end

    def wait_for_page_load
      @current_page.wait_for_username_field(EXTENDED_WAIT_TIME)
      sleep 0.3 # the site_prism wait (above) has a habit of waiting a fraction of a second too short
    end

    def has_fields?
      @current_page.has_username_field? and @current_page.has_password_field? and @current_page.has_login_button?
    end

    def load_page
      @current_page.load
      #Capybara.current_session.driver.browser.manage.window.maximize
    end

    def login id, password
      @test_value = 'test value'
      #@browser.find_element(:name, "username").send_keys id
      #@browser.find_element(:name, "password").send_keys password
      #@browser.find_element(:class, 'loginbtn').click

      #@browser.fill_in('username', :with => id)
      #@browser.fill_in('password', :with => password)

      @current_page.username_field.set(id)
      @current_page.password_field.set(password)
      @current_page.remember_me_checkbox.click
      @current_page.login_button.click
      #return AccountPage.new
    end

    def click_on_facebook
      @current_page.facebook.click
    end

    def click_on_twitter
      @current_page.twitter.click
    end

    def click_on_googleplus
      @current_page.googleplus.click
    end

    def click_on_contact
      @current_page.contact.click
    end
end