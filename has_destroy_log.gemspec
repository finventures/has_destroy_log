$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "has_destroy_log"
  s.version     = "0.1"
  s.authors     = ["Fin"]
  s.summary     = "Turns on paper_trail for :destroy"
  s.files = Dir["{lib}/**/*"]
end
