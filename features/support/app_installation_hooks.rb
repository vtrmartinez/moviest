require 'calabash-android/management/app_installation'

AfterConfiguration do |config|
	FeatureNameMemory.feature_name = nil
end

$first_run = true

Before do |scenario|
	scenario = scenario.scenario_outline if scenario.respond_to?(:scenario_outline)

  feature_name = scenario.feature
  if FeatureNameMemory.feature_name != feature_name \
      or ENV["RESET_BETWEEN_SCENARIOS"] == "1"
    if ENV["RESET_BETWEEN_SCENARIOS"] == "1"
      log "New scenario - reinstalling apps"
    else
      log "First scenario in feature - reinstalling apps"
    end

    if $first_run
      $first_run = false
      uninstall_apps
			system("adb shell input keyevent KEYCODE_ENTER")
      install_app(ENV["TEST_APP_PATH"])
      install_app(ENV["APP_PATH"])
    end

    clear_app_data

    FeatureNameMemory.feature_name = feature_name
	  FeatureNameMemory.invocation = 1
  else
    FeatureNameMemory.invocation += 1
  end
end

FeatureNameMemory = Class.new
class << FeatureNameMemory
  @feature_name = nil
  attr_accessor :feature_name, :invocation
end
