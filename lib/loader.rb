class Loader

  attr_reader :data

  def initialize
    @data = []
  end  

  def load(file)
    File.open(file, "r").each_line do |line|
      @data << line.chomp
    end
  end

  def sanitize_data
    @data.map do |line|
      line.split(" ")
    end
  end

end
