require 'calabash-android/management/adb'
require 'calabash-android/operations'

Before do |scenario|
  start_test_server_in_background
end

Before do |scenario|
  ENV['RESET_BETWEEN_SCENARIOS'] = '1'
end

After do |scenario|
  if scenario.failed?
   screenshot_embed
  end
end