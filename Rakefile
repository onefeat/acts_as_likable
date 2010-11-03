require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('acts_as_likable', '1.0.0') do |p|
  p.url            = "http://github.com/kitop/acts_as_likable"
  p.author         = "kitop"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
