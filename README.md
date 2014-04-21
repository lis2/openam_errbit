# OpenamErrbit

Integration of Errbit with Openam using OpenamAuth (https://github.com/jnsolutions/openam_auth)

## Installation

Add this line to your application's Gemfile:

    gem 'openam_errbit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install openam_errbit
    
### Using 

1. install the gem (as described above)
2. create a file in `config/initializers`

```ruby
    #config/initializers/openam_config.rb
    OpenamConfig.config do
      openam_url <Path to your openam server>
    end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
