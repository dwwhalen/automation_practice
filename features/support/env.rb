require 'colorize'

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'require_all'
require 'test-unit'
require 'test/unit/assertions'
#require './PageObjects/externalpage.rb'
#require './PageObjects/login_page.rb'
#require './PageObjects/home_page.rb'
require './assertions.rb'

require_rel '../../PageObjects'
require_rel '../../PageObjects/common'

include Capybara::DSL
include Test::Unit::Assertions

EXTENDED_WAIT_TIME = 30

ENV['BROWSER_SHUTDOWN'] = 'on'
ENV['TIMESTAMP'] = 'on'
ENV['HOME_URL'] = 'http://phptravels.net/login'

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|

  prefs = {
      # disable prompt for download
      'download' => {
          # 'prompt_for_download' => false,
          #'default_directory' => EXPORTS_PATH_BROWSER
          #'extensions_to_open' => 'pdf' #automatically forces PDFs to open in Adobe, does not save (Save line for Sept 2015)
      }
  }
  caps = Selenium::WebDriver::Remote::Capabilities.chrome
  #excludeSwitches added to workaround this: https://code.google.com/p/chromedriver/issues/detail?id=799
  caps['chromeOptions'] = {
      'prefs' => prefs,
      :excludeSwitches => ['ignore-certificate-errors'],
      # Chrome has an flag to only render tabs when they are clicked on and active
      # Which caused problems with validating content on that tab
      # The flag is called Automatic Tab Discarding - chrome://flags/#automatic-tab-discarding
      # Closest thing I could find for chromedriver - http://peter.sh/experiments/chromium-command-line-switches/#aggressive-tab-discard
      # :args => ['aggressive-tab-discard=false']
  }
    #Capybara.default_max_wait_time = 10
    #Capybara::Selenium::Driver.new(app, :detach => false, :browser => :chrome, :desired_capabilities => caps)
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
    #Capybara.current_session.driver.browser.manage.window.maximize
end

# ---- constants ----

  LOGIN_PAGE = Login.new
  ACCOUNT_PAGE = Account.new
  HOME_PAGE = Home.new
  HOTELS_PAGE = Hotels.new
  TOURS_PAGE = Tours.new
  FLIGHTS_PAGE = Flights.new
  CARS_PAGE = Cars.new
  BLOG_PAGE = Blog.new
  OFFERS_PAGE = Offers.new