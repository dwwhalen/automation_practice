Capybara.class_eval do
  # clear sessions for Selenium Grid, so reset_sessions! works, plus restart browser for each scenario works
  def clear_sessions!
    #session_pool.clear
    #@browser = nil
  end
end

Capybara::DSL.class_eval do

  def clear_sessions!
    # this extension is used to clear the system pool so a later
    #session_pool.clear
  end

end

class Capybara::Selenium::Driver

  def quit
    Capybara.current_session.driver.browser.quit
    #@browser.quit
      # rescue Errno::ECONNREFUSED
      #   # Browser must have already gone
      # rescue Errno::CLIENT_STOPPED_SESSION
  #rescue
    # Browser must have already gone
  end

end