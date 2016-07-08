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