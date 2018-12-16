require "spec_helper"

RSpec.describe Indeed::JobPage, :vcr do
  subject(:job_page) { Indeed::SearchPage.new(:search_term => "sales").job_pages[-1] }

  describe "#to_hash" do
    it "returns a job spec as Ruby Hash" do
      expect(job_page.to_hash).to eq({
        :company => "Pearl Accountants",
        :job_title => "Sales Executive",
        :wage => "£20,000 - £30,000 a year",
        :description => description
      })
    end
  end

  def description
    "£20k - £30k OTE + uncapped commissionWest LondonPearl chartered accountants are offering a fantastic role of Sales Executive . We are offering a great salary, with commission potential for the ideal candidate that is hungry for progression.Full sales training provided by both the Sales Director and Business Development Executive and you will be sent on training courses to further develop your sales skillset in a professional environment.As a Sales Representative, you will need to be proactive with self-starter’s attitude and the ability to drive sales. There are phenomenal career opportunities for the right candidates.Job BriefThe role requires someone with the ability to develop existing accounts and winning new business. As part of this busy sales role, you will maintain the best level of service to new and existing customers. Also, you will communicate with the internal team to ensure a smooth transaction for the customer from start to finish.ResponsibilitiesQualify leads from marketing campaigns as sales opportunitiesContact potential clients through warm calls and emailsPresent our company to potential clientsIdentify client needs and suggest appropriate products/servicesCustomize product solutions to increase customer satisfactionBuild long-term trusting relationships with clientsProactively seek new business opportunities in the marketSet up face to face meetings or telephone callsReport to the Business Development ExecutiveStay up-to-date with new products/services and new pricing/payment planWhat are we looking for?Work experience within sales (preferred but not required)Excellent knowledge of MS OfficeAbility to build productive business professional relationshipsHighly motivated, tenacious and target driven with a proven track record in salesExcellent selling, communication and negotiation skillsPrioritizing, time management and organizational skillsAbility to create and deliver presentations tailored to the audience needsRelationship management skills and positive attitudeCompanyOne of the fastest growing accountancy firms in West London, with a young, dynamic and friendly atmosphere looking to take on the right individual offering career progression and market leading training.www.pearlaccountants.comJob Types: Full-time, Commission, PermanentSalary: £20,000.00 to £30,000.00 /yearLocation:West London, Greater London (Required)"
  end
end
