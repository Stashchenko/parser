require_relative 'queries/sort_by_query'
require_relative 'queries/group_by_query'

class QueryBuilder
  attr_accessor :queries, :data

  def initialize(data)
    @data = data
    @queries = []
  end

  def group_by(field)
    @queries << GroupByQuery.new(field)
    self
  end

  def sort_by(field, order = SortByQuery::ASC)
    @queries << SortByQuery.new(field, order)
    self
  end

  def process
    @queries.each do |q|
      @data = q.perform(@data)
    end
    @data
  end
end
