# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-html5-youtube/version.rb'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-html5-youtube"
  spec.version       = Jekyll::Youtube::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Lorenzo Sapora"]
  spec.email         = ["lorenzo.sapora@gmail.com"]

  spec.summary       = %q{Jekyll plugin to generate html5 snippets for embedding YouTube videos, without iframes.}
  spec.description   = %q{Add {% youtube https://youtube.com/?v=12345678 %} to any page, or post. Check README for more information, and installation instructions.}
  spec.homepage      = "https://github.com/knowbl/jekyll-html5-youtube"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", "~> 3.4"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end