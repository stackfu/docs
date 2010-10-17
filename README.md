# StackFu Documentation

## Website

[http://docs.stackfu.com/](http://docs.stackfu.com/)

## Requirements

- [nanoc 3](https://rubygems.org/gems/nanoc)
- [kramdown](http://kramdown.rubyforge.org/)
- [haml](https://rubygems.org/gems/haml)
- [sass](https://rubygems.org/gems/sass)

## Testing changes online

Run nanoc in autocompile mode:

	$ cd /path/to/docs
	$ nanoc autocompile
	
And visit the URL [http://localhost:3000](http://localhost:3000).

## Compiling

When things are ready to compile

Run nanoc compile:

	$ cd /path/to/docs
	$ nanoc compile
	
The docs will be output to the `output` folder.

## Authors

- [Felipe Coury](http://twitter.com/fcoury)
- [Travis Graham](http://twitter.com/grahamt1)
