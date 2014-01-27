# encoding: UTF-8

require 'justy/parser'
require 'justy/commands/find_command_factory'
require 'justy/commands/find_command'

module Justy
  class Finder
    attr_reader :parser
    attr_reader :find_command

    def initialize
      super
      @parser = Parser.new
    end

    def run(args)
      options = @parser.parse(args)
      if (!options[:type].nil?)
        @find_command = FindCommandFactory.create_command(options[:type].to_sym)
        folder = folder_for_options(options)
        @find_command.run(folder)
      else
        puts @parser.options_parser
      end
    end

    def folder_for_options(options)
      if (options[:relative])
        folder_path = Dir.pwd
        if (options[:folder])
          folder_path = folder_path + "/" + options[:folder]
        end
      else
        folder_path = options[:folder]
      end
      return folder_path
    end
  end

end