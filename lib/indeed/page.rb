require "mechanize"

module Indeed
  class Page
    attr_reader :url, :page

    def initialize(url:)
      @url = url
      @page = Mechanize.new.get(url)
    end
  end
end
