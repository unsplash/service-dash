class Service

  attr_accessor :name, :status_url, :ok_text

  def initialize(name, url, text)
    @name = name
    @status_url = url
    @ok_text = text
  end

  def operational?
    page = scraper.get(status_url)
    page.body.include?(ok_text)
  end  

  private

  def scraper
    Mechanize.new do |mech|
      mech.ssl_version = "TLSv1"
    end
  end

end