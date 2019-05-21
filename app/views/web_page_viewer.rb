# WebPageViewer display results of web_repository
class WebPageViewer
  def display_most(weppages)
    puts '====Most page views ==='
    weppages.each do |wp|
      puts "#{base_string(wp)} visits"
    end
  end

  def display_uniq(weppages)
    puts "\n==== Unique views ==="
    weppages.each do |wp|
      puts "#{base_string(wp)} unique views"
    end
  end

  def display_ip(weppages)
    puts "\n==== Calls per ip ==="
    puts "**Total uniq ip: #{weppages.length}**"
    weppages.each do |wp|
      puts "#{base_string(wp)} calls"
    end
  end

  def all_data(weppages)
    puts "\n==== Calls per ip ==="
    weppages.each do |wp|
      puts wp.inspect
    end
  end

  private

  def base_string(webpage_h)
    "[#{webpage_h[:key]}] #{webpage_h[:process]}"
  end
end
