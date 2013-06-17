# HaikuName

HaikuName: Generate pleasing random name strings.

For example, crimson-wave-3450, dawn-snowflake-f6f1, or little-morning-65f6.

## Installation

Add this line to your application's Gemfile:

    gem 'haiku_name'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install haiku_name

## Usage

HaikuName is not configuration and has 1 simple method, `.generate`

```ruby
HaikuName.generate # => 'delicate-dust-2a74'
# Configure the token length
HaikuName.generate(8) # => 'still-sun-1a841af9'
# Don't include a token
HaikuName.generate(0) # => 'aged-river'
```

## Configuration

In the interest of saying simple, HaikuName does not currently have
word configurations, it just uses internal frozen lists in the code
itself.  This could evolve to allow config, but should stay simple.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
