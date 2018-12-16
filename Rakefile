require "bundler/gem_tasks"
require "json"
require "rspec/core/rake_task"

require "indeed"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :indeed do
  desc "Output jobs listed on indeed.com matching the given search term"
  task :jobs, [:search_term] do |_, args|
    listings = Indeed::SearchPage.new(:search_term => args[:search_term]).job_pages.map(&:to_hash)
    puts listings.to_json
  end
end
