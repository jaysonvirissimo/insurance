require "rails_helper"

describe LeadAssigner do
  let(:arizona) { SalesOffice.create(state: "Arizona") }
  let(:massachusetts) { SalesOffice.create(state: "Massachusetts") }
  subject { described_class.new(lead).call }

  context "when the lead is for Arizona" do
    let(:lead) do
      Lead.create(
        name: "Jayson Virissimo",
        email: "jayson.virissimo@asu.edu",
        phone_number: "602-555-5555",
        state: "Arizona"
      )
    end

    it "assigns the lead to the Arizona sales office" do
      arizona && massachusetts
      subject
      expect(lead.sales_office).to eq(arizona)
    end
  end

  context "when the leader is for Massachusetts" do
    let(:lead) do
      Lead.create(
        name: "Person Guy",
        email: "person.guy@asu.edu",
        phone_number: "555-555-5555",
        state: "Massachusetts"
      )
    end

    it "assigns the lead to the Massachusetts sales office" do
      arizona && massachusetts
      subject
      expect(lead.sales_office).to eq(massachusetts)
    end
  end
end