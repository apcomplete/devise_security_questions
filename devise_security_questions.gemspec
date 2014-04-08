$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devise_security_questions/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devise_security_questions"
  s.version     = DeviseSecurityQuestions::VERSION
  s.authors     = ["Alex Padgett"]
  s.email       = ["padgett.alex@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Plugin for devise to provide security question authentication}
  s.description = %q{Plugin for devise to provide security question authentication}

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_runtime_dependency "rails", ">= 3.1"
  s.add_runtime_dependency "devise"

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rake"
  s.add_development_dependency "sqlite3"
end
