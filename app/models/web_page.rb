# WebPage is a base model to work with
class WebPage
  attr_reader :path, :ip

  def initialize(path, ip)
    @path = path
    @ip = ip
  end
end
