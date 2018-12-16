require "spec_helper"

RSpec.describe Indeed::SearchPage, :vcr do
  subject(:search_page) { described_class.new(:search_term => search_term) }
  let(:search_term) { "sales" }

  describe "#url" do
    it "includes the given search_term in its URL" do
      expect(search_page.url).to match(search_term)
    end
  end

  describe "#job_pages" do
    it "returns a list of job pages" do
      expect(search_page.job_pages).not_to be_empty
      expect(search_page.job_pages.all? { |p| p.is_a?(Indeed::JobPage) }).to be true
    end
  end
end
