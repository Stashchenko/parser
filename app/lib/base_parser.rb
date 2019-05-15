# BaseParser is a base class in order to support one interface for all parsers
class BaseParser
  DELIMITER = ' '.freeze

  # retrieve_data should return array of wep_page objects in your implementation
  def retrieve_data
    raise 'Should implement'
  end

  protected

  def parse_line(line)
    line.split(DELIMITER)
  end
end
