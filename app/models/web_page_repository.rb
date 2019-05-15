# WebPageRepository is repo that allows us to manipulate with wep_page data
class WebPageRepository
  def initialize(parser)
    @parser = parser
  end

  def most_viewed
    r = group_by(source_data, :path).sort_by { |a| -a[1].length }
    transform_result(r)
  end

  def unique_views
    r = group_by(source_data, :path).each_with_object({}) do |arr, hash|
      path = arr[0]
      arr_ips = arr[1]
      hash[path] = group_by(arr_ips, :ip)
    end
    transform_result(r)
  end

  private

  def group_by(data, field)
    data.group_by { |e| e.send(field) }
  end

  def source_data
    @source_data ||= @parser.retrieve_data
  end

  def transform_result(enumerable)
    enumerable.each_with_object([]) do |e, a|
      a << { path: e[0], result: e[1].length }
    end
  end
end
