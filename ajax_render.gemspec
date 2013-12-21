lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ajax_render/version"

Gem::Specification.new do |s|
  s.name        = "ajax_render"
  s.version     = AjaxRender::VERSION
  s.authors     = ["Takashi Kokubun"]
  s.email       = ["takashikkbn@gmail.com"]
  s.homepage    = "https://github.com/tkkbn/ajax_render"
  s.summary     = "Rails plugin to render partial view by ajax"
  s.description = "Rails plugin to render partial view by ajax"

  s.files         = Dir["{lib, vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files    = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
end
