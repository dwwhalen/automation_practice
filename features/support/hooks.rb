Before do |scenario|
  Capybara.default_max_wait_time = 30
  Capybara.ignore_hidden_elements = true
  $scenario_start_time = Time.now

  # the timestamp is turned off by default.
  if ENV['TIMESTAMP'].downcase.eql?('on')
    case scenario
      when Cucumber::RunningTestCase::Scenario
        feature_name = scenario.feature.name
        scenario_name = scenario.name.gsub(/\W\sfrom(.*)/, '')
      else
        feature_name = 'Unable to determine feature name'
        scenario_name = 'Unable to determine scenario name'
    end
    puts "FEATURE: '#{feature_name}'\nSCENARIO: '#{scenario_name}'\nTIME: #{$scenario_start_time.strftime('%I:%M%p on %A, %B %d, %Y')}"
  end

  #Before each local session move the mouse off the screen to help with errant tooltips
  #$mouse.move 0,0
  # make sure this is starting with a clean slate
  #HISTORY.search_time = nil
end

After do |scenario|
  #x = page.driver.browser.window_handles.length
  if page.driver.browser.window_handles.length > 1
    switch_to_main_window
    close_popup_window
  end

end

def switch_to_main_window
  main_window = page.driver.browser.window_handles.first
  page.driver.browser.switch_to.window(main_window)
end

def close_popup_window(window_order=2)
  if page.driver.browser.window_handles.length > 1
    starting_window = page.driver.browser.window_handle
    pop_up_window = page.driver.browser.window_handles[window_order.to_i - 1]
    page.driver.browser.switch_to.window(pop_up_window)
    page.driver.browser.close
    if starting_window.eql?(pop_up_window) # if we didn't switch to a different window before closing a popup, just get back to whatever window is open and go from there.
      page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
    else
      page.driver.browser.switch_to.window(starting_window)
    end
  end
end