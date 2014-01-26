
class FindCommand

  attr_accessor :files

  def initialize
    @files = {}
  end

  def run(folder)

  end

  def output
    puts "\r\n === Identical files ===\n"
    @files.each_value do |filename_array|
      if filename_array.length > 1
        puts "-------------------"
        filename_array.each { |filename| puts '  '+filename }
      end
    end
  end

end