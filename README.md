# HazamaKuroo

This gem is to play Blackjack with a very simple rule.

## HazamaKuroo's rule as Blackjack
1. Players are the CPU and you.
2. First, it will deal two cards to each of the CPU (displayed as 'HZM') and you.
   - One of the CPU's cards is the Hole Card.
3. You can get additional cards, but be careful that the total of your cards value does not exceed 21.
   - If your total exceeds 21, you will lose immediately.
   - If you will get 'A', you can select 1 or 11.
   - 'J', 'Q', or 'K' are worth 10.
4. If you will hit, Hole Card is opened.
   - The CPU will continue to draw until at least 17.
5. The winner is the one who has the largest card total value.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hazama_kuroo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hazama_kuroo

## Usage

If you installed using bundler:

    $ bundle exec kuroo

Or if you installed it yourself:

    $ kuroo

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hazama_kuroo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HazamaKuroo project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hazama_kuroo/blob/master/CODE_OF_CONDUCT.md).
