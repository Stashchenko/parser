# WebPage is a base model to working on a data
class WebPage
  attr_reader :path, :ip

  def initialize(path, ip)
    @path = path
    @ip = ip
  end
end
