# Dodiez

This gem does the simple thing like "HashWithIndifferentAccess":
Implements a hash where keys :foo and "foo" are considered to be the same.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dodiez'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dodiez

## Usage

To use it you have to modify your hash:

```ruby
your_hash = { qwe: 1, "qaz" => 2 }
your_modified_hash = CoolHash.new(your_hash)
```

After it you can access keys as symbol or string:
```ruby
your_modified_hash[:qwe] # 1
your_modified_hash["qwe"] # 1

your_modified_hash[:qaz] # 2
your_modified_hash["qaz"] # 2
```

If your hash has the same Symbol and String keys, it returns their values properly.

```ruby
your_hash = { qwe: 1, "qwe" => 2 }
your_modified_hash = CoolHash.new(your_hash)

your_modified_hash[:qwe] # 1
your_modified_hash["qwe"] # 2

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dodiez. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

