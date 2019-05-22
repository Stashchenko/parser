require_relative 'base_parser'
require_relative '../models/web_page'

# FileParser implements logic that get logs from file
class FileParser < BaseParser
  DELIMITER = ' '.freeze

  def initialize(path)
    raise 'File not found' unless File.exist?(path)

    @file = File.open(path, 'r')
  end

  def retrieve_data
    data = @file.each_line.each_with_object([]) do |line, arr|
      path, ip = parse_line(line)
      arr << WebPage.new(path, ip)
    end
    @file.close
    data
  end

  private

  def parse_line(line)
    line.split(DELIMITER)
  end
end
