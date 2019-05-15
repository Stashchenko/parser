require_relative 'abstract_parser'
require_relative '../models/web_page'

# LogfileParser implements logic that retrieve data from logfile
class FileParser < AbstractParser
  DELIMITER = ' '.freeze

  def initialize(path)
    raise ArgumentError unless File.exist?(path)

    super(path)
  end

  def retrieve_data
    result = []
    File.open(@path).each_line do |line|
      path, ip = parse_line(line)
      result << WebPage.new(path, ip)
    end
    result
  end

  def parse_line(line)
    line.split(DELIMITER)
  end
end
