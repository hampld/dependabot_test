# frozen_string_literal: true

require_relative "lib/dependabot_test/version"

Gem::Specification.new do |spec|
  spec.name = "dependabot_test"
  spec.version = DependabotTest::VERSION
  spec.authors = ["David Hampl"]
  spec.email = ["david.hampl@autouncle.com"]

  spec.summary = "test dependabot bug"
  spec.description = "test dependabot bug"
  spec.homepage = "https://github.com/hampld/dependabot_test"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hampld/dependabot_test"
  spec.metadata["changelog_uri"] = "https://github.com/hampld/dependabot_test"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_runtime_dependency "activemodel", ">= 6", "<= 8"
  spec.add_runtime_dependency "activesupport"
  spec.add_runtime_dependency "google-cloud-datastore", "~> 2"

  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec_junit_formatter"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "timecop"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
