# encoding: UTF-8

require 'digest/md5'
require 'justy/commands/find_command'


class MD5FindCommand < FindCommand

  def run(folder)
    Dir.glob(folder + '**/*', File::FNM_DOTMATCH).each do |filename|
      next if File.directory?(filename)
      key = Digest::MD5.hexdigest(IO.read(filename)).to_sym
      if @files.has_key? key
        @files[key].push filename
      else
        @files[key] = [filename]
      end
    end
    output()
  end 

end