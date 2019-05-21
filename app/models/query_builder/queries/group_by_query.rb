# GroupByQuery array query
class GroupByQuery
  def initialize(field = nil)
    @field = field
  end

  def perform(data)
    group_data_by(data, @field)
  end

  private

  def group_data_by(data, field)
    return group_by_hash(data, field) if data.is_a?(Hash)

    data.group_by { |obj| field.nil? ? obj : obj.send(field) }
  end

  def group_by_hash(data, field)
    data.each_with_object({}) do |arr, hash|
      grouped_key = arr[0]
      second_array = arr[1]
      hash[grouped_key] = group_data_by(second_array, field)
    end
  end
end
