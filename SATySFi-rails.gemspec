$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "SATySFi/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "SATySFi-rails"
  s.version     = SATySFi::Rails::VERSION
  s.authors     = ["Seiei Miyagi"]
  s.email       = ["hanachin@gmail.com"]
  s.homepage    = "https://github.com/hanachin/SATySFi-rails"
  s.summary     = "SATySFi template for Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1", ">= 5.2.1.1"
end
