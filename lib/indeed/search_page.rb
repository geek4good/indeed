module Indeed
  class SearchPage < Page
    def initialize(search_term:)
      @url = "https://www.indeed.co.uk/jobs?q=#{search_term}&l=london"
    end

    def job_pages
      @job_pages ||= page.search("#resultsCol div.result.row>a").map do |link|
        JobPage.new(url: "https://www.indeed.co.uk#{link[:href]}")
      end
    end
  end
end
