require_relative 'app/lib/logfile_parser'
require_relative 'app/models/web_page_repository'
require_relative 'app/views/web_page_console_presenter'

parser = LogfileParser.new(*ARGV)
repo = WebPageRepository.new(parser)

con_presenter = WebPageConsolePresenter.new
print "====Most page views ===\n"
con_presenter.display_most(repo.most_viewed)
print "\n==== Unique views ===\n"
con_presenter.display_uniq(repo.unique_views)
