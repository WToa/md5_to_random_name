# frozen_string_literal: true

require_relative "lib/md5_to_random_name/version"

Gem::Specification.new do |spec|
  spec.name = "md5_to_random_name"
  spec.version = Md5ToRandomName::VERSION
  spec.authors = ["William Tio"]
  spec.email = ["6956294+WToa@users.noreply.github.com"]

  spec.summary = "Convert MD5 hashes to human-readable names"
  spec.description = "Convert MD5 hashes to human-readable names in the format of adjective-animal-suffix"
  spec.homepage = "https://github.com/WToa/md5_to_random_name"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/WToa/md5_to_random_name"
  spec.metadata["changelog_uri"] = "https://github.com/WToa/md5_to_random_name/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile .idea])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end