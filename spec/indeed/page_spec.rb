require "spec_helper"

RSpec.describe Indeed::Page do
  subject(:page) { described_class.new(url: url) }
  let(:url) { "https://geek4good.com" }

  it "assigns the given URL" do
    expect(page.url).to eq(url)
  end
end
