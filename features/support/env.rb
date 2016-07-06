require 'colorize'

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'require_all'
#require './PageObjects/basepage.rb'
#require './PageObjects/loginpage.rb'
#require './PageObjects/homepage.rb'
require './assertions.rb'

require_rel '../../PageObjects'
require_rel '../../PageObjects/common'

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
      # TODO: Nick - 06/15/16
      # Chrome has an flag to only render tabs when they are clicked on and active
      # Which caused problems with validating content on that tab
      # The flag is called Automatic Tab Discarding - chrome://flags/#automatic-tab-discarding
      # Closest thing I could find for chromedriver - http://peter.sh/experiments/chromium-command-line-switches/#aggressive-tab-discard
      # :args => ['aggressive-tab-discard=false']
  }
    #Capybara.default_max_wait_time = 10
    Capybara::Selenium::Driver.new(app, :detach => false, :browser => :chrome, :desired_capabilities => caps)

end


After do |scenario|
  Capybara.current_session.driver.browser.quit
end