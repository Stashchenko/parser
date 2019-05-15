class WebPageRepository
  def initialize(source)
    @source = source
  end

  def most_viewed
    res = {}
    source_data.each { |wp| res.key?(wp.path) ? res[wp.path] += 1 : res[wp.path] = 1 }
    res.sort { |a1, a2| a2[1].to_i <=> a1[1].to_i }
  end

  def unique_views
    res = {}
    source_data.each do |webpage|
      res[webpage.path] = {} unless res.key?(webpage.path)
      if res[webpage.path].key?(webpage.ip)
        res[webpage.path][webpage.ip] += 1
      else
        res[webpage.path][webpage.ip] = 1
      end
    end
    res
  end

  private

  def source_data
    @data ||= @source.retrieve_data
  end
end
