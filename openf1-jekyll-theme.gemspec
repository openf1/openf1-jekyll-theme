Gem::Specification.new do |spec|
  spec.name          = 'openf1-jekyll-theme'
  spec.version       = '0.2.0'
  spec.authors       = ['Patrik Beyls']
  spec.email         = ['beylsp@yahoo']

  spec.summary       = 'Jekyll theme for openf1 github pages.'
  spec.homepage      = 'https://github.com/openf1/openf1-jekyll-theme'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^((assets|_layouts|_includes|_sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end
  spec.add_runtime_dependency 'jekyll', '~> 3.7'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'html-proofer', '~> 3.0'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rubocop', '~> 0.50'
  spec.add_development_dependency 'w3c_validators', '~> 1.3'
end
