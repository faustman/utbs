$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "utbs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "utbs"
  s.version     = Utbs::VERSION
  s.authors     = ["Andrij Tytar"]
  s.email       = ["faust@dot.com.ua"]
  s.homepage    = "http://utbs.kiev.ua"
  s.summary     = "Rails Client for utbs.com.ua link exchanger"
  s.description = "Link sharing system"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2"

  # s.add_dependency "rails", "~> 3.0"
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'webmock'
end
