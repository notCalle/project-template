# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require '__PROJECT_TEMPLATE_SNAKE__/version'

Gem::Specification.new do |spec|
  spec.name          = '__PROJECT_TEMPLATE_SNAKE__'
  spec.version       = __PROJECT_TEMPLATE_CAMEL__::VERSION
  spec.authors       = ['__PROJECT_TEMPLATE_AUTHOR__']
  spec.email         = ['__PROJECT_TEMPLATE_EMAIL__']

  spec.summary       = 'A Project Template Default Summary'
  spec.homepage      = 'https://github.com/notcalle/__PROJECT_TEMPLATE_SNAME__'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '~> 2.7'

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'codecov', '~> 0.5.0'
  spec.add_development_dependency 'cucumber', '~> 5.3'
  spec.add_development_dependency 'git-version-bump', '~> 0.17'
  spec.add_development_dependency 'pry', '~> 0.14'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.15'
  spec.add_development_dependency 'rubocop-rake', '~> 0.5.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.3'
  spec.add_development_dependency 'ruby-prof', '~> 1.4'
  spec.add_development_dependency 'simplecov', '~> 0.21'
end
