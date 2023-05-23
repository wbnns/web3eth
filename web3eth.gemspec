# frozen_string_literal: true

require_relative "lib/web3ethereum/version"

Gem::Specification.new do |spec|
  spec.name          = "web3ethereum"
  spec.version       = Web3::Eth::VERSION
  spec.authors       = ["Will Binns"]
  spec.email         = ["hello@willbinns.org"]

  spec.summary       = %q{Interact with the Ethereum network.}
  spec.description   = %q{Connect with a local or remote node to interact with the Ethereum network in your Ruby or Rails apps.}
  spec.homepage      = "https://github.com/wbnns/web3eth"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wbnns/web3eth"
  spec.metadata["changelog_uri"] = "https://github.com/wbnns/web3eth/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir.chdir(File.expand_path(__dir__)) do
  #  `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  # end
  spec.files = Dir.glob('{assets,config,lib}/**/*', File::FNM_DOTMATCH)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency('rlp', '~> 0.7.3')
  spec.add_dependency('keccak', '~> 1.3')

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
