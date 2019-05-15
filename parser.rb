require_relative 'app/lib/file_parser'
require_relative 'app/models/web_page_repository'
require_relative 'app/views/web_page_console_presenter'

parser = FileParser.new(*ARGV)
repo = WebPageRepository.new(parser)

presenter = WebPageConsolePresenter.new
print "====Most page views ===\n"
presenter.display_most(repo.most_viewed)
print "\n==== Unique views ===\n"
presenter.display_uniq(repo.unique_views)
