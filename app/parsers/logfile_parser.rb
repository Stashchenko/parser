require_relative 'abstract_parser'
require_relative '../models/web_page'

class LogfileParser < AbstractParser
  def initialize(path)
    raise ArgumentError unless File.exist?(path)
    super(path)
  end

  def retrieve_data
    result = []
    File.open(@path).each_line do |line|
      path, ip = line.split(' ')
      result << WebPage.new(path, ip)
    end
    result
  end
end
