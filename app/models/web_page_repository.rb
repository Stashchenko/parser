require_relative 'query_builder/query_builder'

# WebPageRepository is repo that allows us to manipulate with wep_page data
class WebPageRepository
  def initialize(parser)
    @parser = parser
  end

  def most_views
    QueryBuilder.new(source_data).group_by(:path).sort_by(:length, :des).process
  end

  def uniq_views
    QueryBuilder.new(source_data).group_by(:path).group_by(:ip).process
  end

  def uniq_ip
    QueryBuilder.new(source_data).group_by(:ip).sort_by(:length, :des).process
  end

  def sort_by_time
    QueryBuilder.new(source_data).group_by(:path).sort_by(:time, :des).process
  end

  def source_data
    @source_data ||= @parser.retrieve_data
  end
end
