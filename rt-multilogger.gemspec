# coding: utf-8
#
#  rt-multilogger.gemspec
#  rt-multilogger
#
#  Created by Ryuichi Tanimoto on 12/10/16
#  Copyright (c) 2016 Ryuichi Tanimoto. All rights reserved.
#

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rt/multilogger/version'

Gem::Specification.new do |spec|
  spec.name          = "rt-multilogger"
  spec.version       = RT::MultiLogger::VERSION
  spec.authors       = ["RyuichiTanimoto"]
  spec.email         = ["ryuichi.tanimoto@gmail.com"]

  spec.summary       = %q{Logger which outputs the application log both to a file and STDOUT.}
  spec.homepage      = "https://github.com/RyuichiTanimoto/rt-multilogger"
  spec.license       = 'GPL'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
