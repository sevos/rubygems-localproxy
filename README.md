# Rubygems::Localproxy

This gem is for setting up squid proxy in order to speed up
resolving rubygems dependencies.

## Installation

rubygems-localproxy requires squid to be installed in /usr/local/sbin/squid
(default homebrew install)

install it yourself as:

    $ gem install rubygems-localproxy
    $ gem-localproxy init

## Usage

    $ gem-localproxy start
    $ eval $(rubygems-localproxy use)
    $ cd project/dir
    $ bundle
    
To stop squid:

    $ gem-localproxy stop

## Caveats

Currently cachces only non-SSL requests, so bundler will be faster
only if you have following line in your Gemfile:

    source 'http://rubygems.org/'

Please be warned: this is not secure production setting!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
