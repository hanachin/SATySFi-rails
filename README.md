# SATySFi::Rails
SATySFi template for Rails.

## Usage
Under the `app/views/**/*`, create a template like below as `*.pdf.saty`

```
@require: standalone
let-block ctx +hi = line-break true true ctx (read-inline ctx {hi}) in
standalone '<+hi;>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'SATySFi-rails'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install SATySFi-rails
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
