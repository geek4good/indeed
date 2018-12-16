require "mechanize"

module Indeed
  class Page
    attr_reader :url

    def initialize(url:)
      @url = url
    end

    private

    def page
      @page ||= Mechanize.new.get(url)
    end
  end
end
