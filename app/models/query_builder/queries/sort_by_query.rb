# SortByQuery sort array query
class SortByQuery
  ASC = :asc
  DES = :des
  SORT_KEYS = [ASC, DES].freeze

  def initialize(field = nil, order = :asc)
    raise "Order should be in #{SORT_KEYS}" unless SORT_KEYS.include?(order)

    @field = field
    @order = order
  end

  def perform(data)
    data.sort_by(&method(:sort))
  end

  private

  def sort(data)
    @order == :des ? -apply_for(data) : apply_for(data)
  end

  def apply_for(data)
    return data if @field.nil?

    data[1].send(@field) if data.respond_to?(@field) && grouped_data?(data)
  end

  def grouped_data?(data)
    data.is_a?(Array) || data.is_a?(Hash)
  end
end
