require "open3"
require "spec_helper"

RSpec.describe Indeed do
  it "has a version number" do
    expect(Indeed::VERSION).not_to be nil
  end

  describe "rake indeed:jobs", :vcr do
    let(:fixture) { File.read(File.expand_path("../fixtures/stdout.txt", __FILE__)) }

    it "outputs job listings in JSON format" do
      search_term = "sales"
      output, status = Open3.capture2("rake indeed:jobs[#{search_term}]")

      expect(status.exitstatus).to eq(0)
      expect(output).to eq(fixture)
    end
  end
end
