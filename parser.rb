require_relative 'app/lib/file_parser'
require_relative 'app/models/web_page_repository'
require_relative 'app/controllers/wep_page_controller'
require_relative 'app/views/web_page_viewer'
# require_relative 'app/models/query_builder/queries/group_by_query'
# require_relative 'app/models/query_builder/queries/sort_by_query'
# require_relative 'app/models/query_builder/query_builder'

repo = WebPageRepository.new(FileParser.new(*ARGV))
viewer = WebPageViewer.new

c = WepPageController.new(repo, viewer)
c.most_viewed
c.unique_views
c.unique_ips
