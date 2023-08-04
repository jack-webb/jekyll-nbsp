# frozen_string_literal: true

require_relative "lib/jekyll/nbsp/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-nbsp"
  spec.version = Jekyll::Nbsp::VERSION
  spec.authors = ["Jack Webb"]
  spec.email = ["git@jackwebb.me"]

  spec.summary = "Jekyll filter to make spaces between words non-breaking. Use {{ page.my_text | nbsp }} in your Liquid template."
  spec.homepage = "https://github.com/jack-webb/jekyll-nbsp"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jack-webb/jekyll-nbsp"
  spec.metadata["changelog_uri"] = "https://github.com/jack-webb/jekyll-nbsp"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
