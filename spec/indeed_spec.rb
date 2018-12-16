require "open3"
require "spec_helper"

RSpec.describe Indeed do
  it "has a version number" do
    expect(Indeed::VERSION).not_to be nil
  end

  describe "rake indeed:jobs" do
    it "outputs job listings in JSON format" do
      search_term = "sales"
      output, status = Open3.capture2("rake indeed:jobs[#{search_term}]")

      expect(status.exitstatus).to eq(0)
      expect(output).to eq(<<~EOT)
      [
        {
        "company":"some company",
        "job_title":"job title",
        "wage":"wage",
        "description":"description"
        }
      ]
      EOT
    end
  end
end
