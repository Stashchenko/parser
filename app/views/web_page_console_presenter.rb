# WebPageConsolePresenter display results of web_repository
class WebPageConsolePresenter
  def display_most(weppages)
    weppages.each do |wp|
      puts "[#{wp[:path]}] #{wp[:result]} visits"
    end
  end

  def display_uniq(weppages)
    weppages.each do |wp|
      puts "[#{wp[:path]}] #{wp[:result]} unique views"
    end
  end
end
