# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indexter/version'

Gem::Specification.new do |spec|
  spec.name          = "indexter"
  spec.version       = Indexter::VERSION
  spec.authors       = ["Chris Cummer"]
  spec.email         = ["chriscummer@me.com"]

  spec.summary       = %q{Checks databases tables for indexes on foreign keys.}
  spec.homepage      = "httpis://github.com/senorprogrammer/indexter"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Production dependencies
  spec.add_dependency "activerecord"
  spec.add_dependency "sqlite3"
  spec.add_dependency "rainbow"
  spec.add_dependency "terminal-table"

  # Development dependencies
  # spec.add_development_dependency "bundler", "~> 1.13.7"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.5"
end
