# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'rubx-mixin'
  spec.version       = '1.0.2'
  spec.authors       = ['kacperduras']
  spec.email         = ['git@kacperduras.pl']
  spec.license       = 'CDDL'

  spec.summary       = 'All required gems and utilities for Rubx, mixed in one'
  spec.homepage      = 'https://github.com/rubx-bot/mixin'

  spec.files         = `git ls-files -z`.split("\x0").reject do |file|
    file.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |file|
    file.basename(file)
  }

  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'bundler', '~> 1.17'
  spec.add_runtime_dependency 'coveralls', '~> 0.8'
  spec.add_runtime_dependency 'dispel', '~> 0.1' unless Gem.win_platform?
  spec.add_runtime_dependency 'minitest', '~> 5.11'
  spec.add_runtime_dependency 'mustache', '~> 1.1'
  spec.add_runtime_dependency 'parallel', '~> 1.12'
end
