# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "openf1-jekyll-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Patrik Beyls"]
  spec.email         = ["beylsp@yahoo"]

  spec.summary       = "Jekyll theme for openf1 github pages."
  spec.homepage      = "https://github.com/openf1/openf1-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.7"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
