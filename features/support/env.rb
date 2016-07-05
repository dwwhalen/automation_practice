require 'colorize'

require 'selenium-webdriver'
require './PageObjects/basepage.rb'
require './PageObjects/loginpage.rb'
require './PageObjects/homepage.rb'
require './assertions.rb'

After do
  @browser.close
end