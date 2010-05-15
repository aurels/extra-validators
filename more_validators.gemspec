Gem::Specification.new do |s|
  s.name = "more_validators"
  s.summary = "A collection of misc usefull validators for ActiveModel"
  s.description = "A collection of misc usefull validators for ActiveModel"
  s.homepage = "http://github.com/aurels/more_validators"
  
  s.version = "1.0"
  s.date = "2010-05-15"
  
  s.authors = ["Aurélien Malisart"]
  s.email = "aurelien.malisart@gmail.com"
  
  s.require_paths = ["lib"]
  s.files = Dir["lib/*"] + Dir["spec/**/*"] + ["README.rdoc", "Rakefile", "init.rb"]
  s.extra_rdoc_files = ["README.rdoc"]
  
  s.has_rdoc = false

  s.rubygems_version = "1.3.4"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2")
end