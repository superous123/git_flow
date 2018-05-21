
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "git_flow/version"

Gem::Specification.new do |spec|
  spec.name          = "git_flow"
  spec.version       = GitFlow::VERSION
  spec.authors       = ["jialei"]
  spec.email         = ["4705140@qq.com"]

  spec.summary       = "git_flow"
  spec.description   = "git git_flow"
  spec.homepage      = "https://github.com/superous123/git_flow"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "git", "~> 1.4"
  
end
