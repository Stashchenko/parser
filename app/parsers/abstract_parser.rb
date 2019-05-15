class AbstractParser
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def retrieve_data
    raise 'Should implement'
  end
end
