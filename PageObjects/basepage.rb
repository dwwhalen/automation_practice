class BasePage < SitePrism::Page

  def initialize(the_browser)
    @browser = the_browser
  end

  def visit(url)
    @browser.get url
    @title = @browser.title
  end

  def logout
    sleep(5)
    @browser.click_link('John')
    sleep(5)
    element = @browser.find_element(:xpath, "//a[contains(.,'Logout')]")
    element.click()
  end

  def select_menu_item(menu_item)

   #element = @browser.find_element(:xpath, "//a[contains(.,'" + menu_item + "')]")
   #element.click

   sleep(5)
    #@browser.wait_for_username(10)
    #@browser.should have_content(menu_item)
    @browser.click_link(menu_item)
    #@browser.find(:xpath, "//a[contains(.,'" + menu_item + "')]").click

  end


end