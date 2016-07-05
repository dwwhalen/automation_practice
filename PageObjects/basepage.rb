class BasePage

  def initialize(the_browser)
    @browser = the_browser
  end

  def visit(url)
    @browser.get url
    @title = @browser.title
  end

  def logout
    sleep(5)
    element = @browser.find_element(:class, 'show-submenu')
    element.click
    sleep(5)
    element = @browser.find_element(:xpath, "//a[contains(.,'Logout')]")
    element.click()
  end

  def select_menu_item(menu_item)

    element = @browser.find_element(:xpath, "//a[contains(.,'" + menu_item + "')]")
    element.click

  end


end