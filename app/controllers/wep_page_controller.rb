# WepPageController interface between repo and view
# components to process all the business logic
class WepPageController
  def initialize(repo, view)
    @repo = repo
    @view = view
  end

  def most_viewed
    @view.display_most(transform_result(@repo.most_views))
  end

  def unique_views
    @view.display_uniq(transform_result(@repo.uniq_views))
  end

  def unique_ips
    @view.display_ip(transform_result(@repo.uniq_ip))
  end

  def sort_by_time
    @view.all_data(@repo.sort_by_time)
  end

  private

  def transform_result(enumerable)
    enumerable.each_with_object([]) do |arr, out|
      out << { key: arr[0], process: arr[1].length }
    end
  end
end
