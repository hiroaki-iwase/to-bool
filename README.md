[![Build Status](https://travis-ci.org/hiroaki-iwase/to-bool.svg)](https://travis-ci.org/hiroaki-iwase/to-bool)
# to-bool
This gem convert 'true' and 'false' from string class to collectively TrueClass and FalseClass.

## How to Install
~~~~
gem install to-bool
~~~~

## Usage
### Success case
You can convert by 'to_bool' method.
~~~~
'true'.to_bool => TrueClass
'false'.to_bool => FalseClass
~~~~
In case of already Boolean Type, this method return as it is.
~~~~
true.to_bool => TrueClass
false.to_bool => FalseClass
~~~~

### Error Case
* This gems sendback Error for other Object without True/False/String.
* This gems sendback Error for irregular string type(not equal 'true' or 'false')
~~~~
'truetrue'.to_bool => ArgumentError
''.to_bool => ArgumentError
nil.to_bool => NoMethodError
~~~~

## Contributing

If you would like to contribute, please...

1. Fork.
2. Make changes in a branch & add unit tests.
3. Run Unit Test
~~~~
rspec spec/to_bool_spec.rb
~~~~
4. Create a pull request.

Contributions, improvements, comments and suggestions are welcome!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

