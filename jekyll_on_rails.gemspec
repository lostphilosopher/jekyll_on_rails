# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll_on_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll_on_rails"
  spec.version       = JekyllOnRails::VERSION
  spec.authors       = ["lostphilosopher"]
  spec.email         = ["wandersen02@gmail.com"]

  spec.summary       = %q{Add a Jeyll Blog to your rails project.}
  spec.description   = %q{Add a Jeyll Blog to your rails project based on https://exceptiontrap.com/blog/4-create-a-simple-jekyll-like-blog-in-your-rails-4-app.}
  spec.homepage      = 'https://github.com/lostphilosopher/jekyll_on_rails'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  # Gem specific dependencies
  spec.add_runtime_dependency "jekyll"
  spec.add_runtime_dependency "activemodel"
  spec.add_runtime_dependency "redcarpet"
  spec.add_runtime_dependency "pygments.rb"
  spec.add_runtime_dependency "railties"
end
