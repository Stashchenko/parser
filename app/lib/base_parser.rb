# BaseParser is a base class in order to support one interface for all parsers
class BaseParser
  # retrieve_data should return array of wep_page objects in an implementation
  def retrieve_data
    raise 'Should implement'
  end
end
