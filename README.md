# GatesOfHeaven

Gates Of Heaven allows you to check password strength for any ActiveModel password
It is most useful when using Ruby On Rails!

## Installation

Add this line to your application's Gemfile:

    gem 'gates_of_heaven'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gates_of_heaven

## Usage

It's dead simple to use the Gates:

    User < ActiveRecord::Base
    attr_accessor :password

    validates :password, gates_of_heaven: true

But not so easy to pass through them!

![Gates of Heaven](http://img5.joyreactor.com/pics/post/auto-cat-animals-heaven-346025.jpeg "Gates of Heaven")

## CLI

There's also a CLI tool included, allowing you to spot check passwords:

    $ gates doorman [password]

## Next up

Right now, the Gates only check whether the length is less than 6,
and that the password contains digits.

I intend to have the Gates do a match against a library of the most commonly used passwords.
Suggestions and pull requests are welcome!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
