require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

desc 'Start Emulator'
task :start_emulator, [:emulator_name] do |_task, args|
  puts "Starting emulator #{args[:emulator_name]}"
  sh "emulator -avd #{args[:emulator_name]} > /dev/null &"
end

desc 'Cucumber Reports'
task :cucumber_report do
  puts "Gerando relatórios .html usando Cucumber"
  sh 'cucumber --format html --out report.html --format pretty'
end
