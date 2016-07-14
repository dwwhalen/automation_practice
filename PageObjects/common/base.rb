class Base

  def title
    @current_page.title
  end

  def load_page
    @current_page.load
    #Capybara.current_session.driver.browser.manage.window.maximize
  end

end