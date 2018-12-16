module Indeed
  class JobPage < Page
    def to_hash
      {
        :company => company,
        :job_title => job_title,
        :wage => wage,
        :description => description
      }
    end

    def company
      page.search(".jobsearch-InlineCompanyRating div").first&.text
    end

    def job_title
      page.search(".jobsearch-JobInfoHeader-title")&.text
    end

    def wage
      page.search(".jobsearch-JobMetadataHeader .jobsearch-JobMetadataHeader-item").first&.text
    end

    def description
      desc = page.search(".jobsearch-JobComponent-description")
      desc.css(".jobsearch-JobMetadataHeader").remove
      desc.text
    end
  end
end
