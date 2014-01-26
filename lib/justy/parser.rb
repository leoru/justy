# encoding: UTF-8

require 'optparse'
module Justy
  class Parser
    attr_accessor :options
    attr_reader :options_parser

    def initialize
      super
      init_parser
    end

    def init_parser
      @options_parser = OptionParser.new do|opts|
        opts.banner = "Usage: justy [options]"
        opts.on('-t', '--type type', 'Search type. Must be md5 or filename.') do |type|
          @options[:type] = type;
        end

        opts.on('-r', '--relative', 'Relative to current folder') do
          @options[:relative] = true
        end

        opts.on('-f', '--folder folder', 'Search folder') do |folder|
          @options[:folder] = folder
        end

        opts.on('-h', '--help', 'Displays Help') do
          puts opts
          exit
        end
      end
    end

    def parse(args)
      @options = {:type => nil, :folder => nil, :relative => false }
      options_parser.parse!
      return options
    end

  end
end
