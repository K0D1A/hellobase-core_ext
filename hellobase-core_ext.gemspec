$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'hellobase/core_ext/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'hellobase-core_ext'
  spec.version     = Hellobase::CoreExt::VERSION
  spec.authors     = ['Anthony Wang']
  spec.email       = ['awang@hellobase.com']
  spec.summary     = 'Core extensions for Hellobase'
  spec.license     = 'MIT'
  spec.homepage    = 'https://github.com/K0D1A/hellobase-core_ext'

  spec.files = Dir['{lib}/**/*', 'MIT-LICENSE']

  spec.add_development_dependency 'minitest',     '~> 5.14'
end
