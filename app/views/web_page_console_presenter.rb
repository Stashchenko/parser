# WebPageConsolePresenter display results of web_repository
class WebPageConsolePresenter
  def display_most(weppages)
    weppages.each do |wp|
      p "[#{wp[0]}] #{wp[1]} visits"
    end
  end

  def display_uniq(weppages)
    weppages.each do |name, value|
      p "[#{name}]  #{value.length} unique views"
    end
  end
end
