Before do
  # TEST_ENV_NUMBER comes from parallel_test gem
  browser_name = ENV['TEST_ENV_NUMBER'] == '2' ? :firefox : :chrome
  puts "Running tests with #{browser_name}"
  @browser = Watir::Browser.new browser_name
end

After do
  @browser.close
end
