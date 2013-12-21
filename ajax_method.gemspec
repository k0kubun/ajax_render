$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ajax_method/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ajax_method"
  s.version     = AjaxMethod::VERSION
  s.authors     = ["Takashi Kokubun"]
  s.email       = ["takashikkbn@gmail.com"]
  s.homepage    = "https://github.com/tkkbn/ajax_method"
  s.summary     = "Rails plugin to render partial view by ajax"
  s.description = "Rails plugin to render partial view by ajax"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
end
