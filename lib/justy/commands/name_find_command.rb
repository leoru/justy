# encoding: UTF-8

require 'justy/commands/find_command'

class NameFindCommand < FindCommand

  def run(folder)
    Dir.glob(folder + '/**/*', File::FNM_DOTMATCH).each do |full_filename|
      next if File.directory?(full_filename)
      key = File.basename(full_filename)
      if @files.has_key? key
        @files[key].push full_filename
      else
        @files[key] = [full_filename]
      end
    end
    output()
  end

end
