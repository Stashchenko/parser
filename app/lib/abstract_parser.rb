# BaseParser is a base class in order to support one interface for all parsers
class AbstractParser
  attr_reader :path

  def initialize(path)
    @path = path
  end

  # retrieve_data should return array of wep_page objects in you implementation
  def retrieve_data
    raise 'Should implement'
  end
end
