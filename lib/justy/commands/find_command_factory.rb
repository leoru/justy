# encoding: UTF-8

require 'justy/commands/find_command'
require 'justy/commands/md5_find_command'
require 'justy/commands/name_find_command'

class FindCommandFactory

  def self.create_command(type)
    case type
      when :md5
        MD5FindCommand.new
      when :filename
        NameFindCommand.new
      else
        raise "Bad search type: #{type}"
    end
  end
  
end