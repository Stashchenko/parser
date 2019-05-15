require_relative 'base_parser'
require_relative '../models/web_page'

# LogfileParser implements logic that retrieve data from logfile
class FileParser < BaseParser
  # FILE_NOT_FOUND_ERROR = 'File not found'.freeze

  def initialize(path)
    raise 'File not found' unless File.exist?(path)

    @file = File.open(path).read
  end

  def retrieve_data
    result = []
    @file.each_line do |line|
      path, ip = parse_line(line)
      result << WebPage.new(path, ip)
    end
    result
  end
end
