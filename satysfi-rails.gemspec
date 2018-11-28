$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "satysfi/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "satysfi-rails"
  s.version     = Satysfi::Rails::VERSION
  s.authors     = ["Seiei Miyagi"]
  s.email       = ["hanachin@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Satysfi::Rails."
  s.description = "TODO: Description of Satysfi::Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1", ">= 5.2.1.1"
end
