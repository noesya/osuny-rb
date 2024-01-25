# frozen_string_literal: true

require_relative "lib/osuny/version"

Gem::Specification.new do |spec|
  spec.name = "osuny"
  spec.version = Osuny::VERSION
  spec.authors = ["Sébastien Gaya"]
  spec.email = ["sebastien.gaya@gmail.com"]

  spec.summary = "Placeholder Ruby gem to reserve osuny name"
  spec.description = "Placeholder Ruby gem to reserve osuny name"
  spec.homepage = "https://github.com/noesya/osuny-rb"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/noesya/osuny-rb/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
