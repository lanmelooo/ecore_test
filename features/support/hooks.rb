require 'report_builder'
require 'date'

at_exit do
  time = Time.now.to_s
  ReportBuilder.configure do |config|
    config.json_path = 'reports/report.json'
    config.report_path = 'reports/cucumber_relatorio'
    config.report_types = [:html]
    config.report_title = 'Cucumber Report Builder - Automated Testing E-CORE'
    config.compress_images = false
    config.color = 'indigo'
    config.additional_info = { 'Project name' => 'Team E-CORE', 'Platform' => 'web', 'Report generated' => time }
  end
  ReportBuilder.build_report
end

After do |scenario|
  if scenario.failed?
     screenshot_path = "reports/screenshot/FAILED_#{scenario.name.gsub(' ','').gsub(/[^0-9A-Za-z]/, '')}.png"
     page.driver.save_screenshot(screenshot_path)
     embed("#{screenshot_path}", 'image/png')
  end
end