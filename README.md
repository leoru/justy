# Justy

When you want to find duplicate files in folder, all you need is Justy.

Justy - is a command line tool to find duplicates in folders recursively.
Find methods:

* MD5;
* File name.

## Installation

Add this line to your application's Gemfile:

    gem 'justy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install justy

## Usage

Justy has some params for searching.

* --folder (or -f) - Folder for searching;
* --type (or -t) - Type of searching. Must be `md5` or `filename`;
* --relative (or -r) flag - This flag is for detecting relative folder searching or not. 


## Example 
Find all duplicates in directory `/Users/ars/Projects/` with `File name` search method not relatively:

    $ justy --folder=/Users/ars/Projects/ -t filename

Find all duplicates in relative to current working directory with `md5` search method:

    $ justy --type=md5 --relative

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
