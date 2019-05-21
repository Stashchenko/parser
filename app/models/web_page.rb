# WebPage is a base model to work with
class WebPage
  attr_reader :path, :ip, :time

  def initialize(path, ip, time = nil)
    @path = path
    @ip = ip
    @time = time
  end
end
