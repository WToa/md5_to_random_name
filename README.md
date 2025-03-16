# Md5ToRandomName

Convert MD5 hashes to human-readable names in the format of `adjective-animal-suffix`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'md5_to_random_name'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install md5_to_random_name
```

## Usage

### Basic Usage

```ruby
require 'md5_to_random_name'
require 'digest/md5'

# Generate a name from an MD5 hash
md5 = Digest::MD5.hexdigest("hello world")
name = Md5ToRandomName.generate(md5)
puts name
# => "amazing-dolphin-5a0f00"
```

### Custom Word Lists

You can provide your own adjectives and animals:

```ruby
# Custom word lists
custom_adjectives = ["red", "blue", "green"]
custom_animals = ["cat", "dog", "fish"]

# Using the module method
name = Md5ToRandomName.generate(md5, custom_adjectives, custom_animals)

# Or using the Generator class
generator = Md5ToRandomName::Generator.new(custom_adjectives, custom_animals)
name = generator.generate(md5)
```

## Features

- Converts any valid MD5 hash to a human-readable name
- Generates consistent names for the same hash
- Uses the format: `adjective-animal-suffix`
- The suffix is the last 6 characters of the MD5 hash
- Customizable word lists

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/WToa/md5_to_random_name.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
