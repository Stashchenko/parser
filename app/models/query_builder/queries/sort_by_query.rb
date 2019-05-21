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

    if data.respond_to?(@field)
      data.send(@field)
    elsif grouped_data?(data)
      data[1].sort_by { |obj| obj.send(@field) }
      data[0]
    end
  end

  def grouped_data?(data)
    data.is_a?(Array) || data.is_a?(Hash)
  end
end
