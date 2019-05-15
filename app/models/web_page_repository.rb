# WebPageRepository is repo that allows us to manipulate with wep_page data
class WebPageRepository
  def initialize(parser)
    @parser = parser
  end

  def most_viewed
    temp = source_data.each_with_object(Hash.new(0)) { |e, h| h[e.path] += 1 }
    out = temp.sort { |a1, a2| a2[1].to_i <=> a1[1].to_i }
    normalize_most_viewed(out)
  end

  def unique_views
    res = {}
    source_data.each do |webpage|
      res[webpage.path] ||= {}
      calculate_uniq!(res, webpage)
    end
    normalize_uniq(res)
  end

  private

  def source_data
    @source_data ||= @parser.retrieve_data
  end

  def calculate_uniq!(result_hash, webpage)
    result_hash[webpage.path] ||= {}
    if result_hash[webpage.path].key?(webpage.ip)
      result_hash[webpage.path][webpage.ip] += 1
    else
      result_hash[webpage.path][webpage.ip] = 1
    end
  end

  def normalize_most_viewed(out)
    result = []
    out.each do |v|
      result << { path: v[0], result: v[1] }
    end
    result
  end

  def normalize_uniq(res)
    result = []
    res.each do |v|
      result << { path: v[0], result: v[1].length }
    end
    result
  end
end
