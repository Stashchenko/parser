require_relative 'app/lib/file_parser'
require_relative 'app/models/web_page_repository'
require_relative 'app/views/web_page_viewer'

parser = FileParser.new(*ARGV)
repo = WebPageRepository.new(parser)
viewer = WebPageViewer.new

print "====Most page views ===\n"
viewer.display_most(repo.most_viewed)

print "\n==== Unique views ===\n"
viewer.display_uniq(repo.unique_views)
