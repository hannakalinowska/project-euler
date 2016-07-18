begin
  libdir = File.expand_path(File.dirname(__FILE__))
  $LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task :default => :spec
rescue LoadError
  # no rspec available
end
