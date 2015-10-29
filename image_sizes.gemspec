$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'image_sizes/version'

Gem::Specification.new do |s|
  s.name        = 'image_sizes'
  s.version     = ImageSizes::VERSION
  s.licenses    = ['MIT']
  s.date        = '2015-10-29'
  s.summary     = "Gen multi sizes from one image."
  s.description = "A ruby gem that gen multi sizes from one image."
  s.authors     = ["Aston Fu"]
  s.email       = 'im@fuhao.im'
  s.files       = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']
  s.executables   = %w(image_sizes)
  s.homepage    = 'https://github.com/astonfu/image_sizes'

  s.add_runtime_dependency 'mini_magick'
  s.add_development_dependency 'rspec'
end
