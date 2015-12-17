# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prct07/version'

Gem::Specification.new do |spec|
  #spec.name          = "prct07"
  spec.name          = "MiDSL-prct11"
  spec.version       = Prct07::VERSION
  spec.authors       = ["alu0100499377"]
  spec.email         = ["alu0100499377@ull.edu.es"]
  
  #if spec.respond_to?(:metadata)
    #spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  #end
  
  if spec.respond_to?(:metadata)
    #spec.metadata = { "allowed_push_host" => 'http://mygemserver.com'}
  end


  #spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.summary       = "Esta es mi gema"
  #spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.description   = "Gema para crear DSL"
  #spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.homepage      = 'https://github.com/alu0100499377/prct11-1516.git'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
end
