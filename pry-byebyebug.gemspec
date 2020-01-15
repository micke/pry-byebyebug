lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "pry-byebyebug"
  spec.version       = "1.0.0"
  spec.authors       = ["Micke Lisinge"]
  spec.email         = ["hi@micke.me"]

  spec.summary       = %q{Aliases `debugger` and `byebug` to `binding.pry`}
  spec.description   = %q{Aliases `debugger` and `byebug` to `binding.pry`}
  spec.homepage      = "https://github.com/micke/pry-byebyebug"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/micke/pry-byebyebug"
  spec.metadata["changelog_uri"] = "https://github.com/micke/pry-byebyebug"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "pry"
  spec.add_dependency "binding_of_caller"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
