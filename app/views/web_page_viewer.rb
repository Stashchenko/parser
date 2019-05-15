# WebPageViewer display results of web_repository
class WebPageViewer
  def display_most(weppages)
    weppages.each do |wp|
      puts "#{base_result(wp)} visits"
    end
  end

  def display_uniq(weppages)
    weppages.each do |wp|
      puts "#{base_result(wp)} unique views"
    end
  end

  private

  def base_result(webpage_h)
    "[#{webpage_h[:path]}] #{webpage_h[:result]}"
  end
end
