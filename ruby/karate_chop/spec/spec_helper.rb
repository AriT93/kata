$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require '../lib/karate_chop'
require 'rspec'
require 'rspec/autorun'

Spec::Runner.configure do |config|

end
