# WebPageViewer display results of web_repository
class WebPageViewer
  def display_most(weppages)
    weppages.each do |wp|
      puts "#{base_string(wp)} visits"
    end
  end

  def display_uniq(weppages)
    weppages.each do |wp|
      puts "#{base_string(wp)} unique views"
    end
  end

  private

  def base_string(webpage_h)
    "[#{webpage_h[:key]}] #{webpage_h[:result]}"
  end
end
