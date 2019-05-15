require_relative 'app/lib/logfile_parser'
require_relative 'app/models/web_page_repository'
require_relative 'app/web_page_presenter'

parser = LogfileParser.new(*ARGV)
webrepo = WebPageRepository.new(parser)

con_presenter = WebPagePresenter.new
print "====Most page views ===\n"
con_presenter.display_most(webrepo.most_viewed)
print "\n==== Unique views ===\n"
con_presenter.display_uniq(webrepo.unique_views)
