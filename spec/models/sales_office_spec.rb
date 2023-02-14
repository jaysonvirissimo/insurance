require 'rails_helper'

RSpec.describe SalesOffice, type: :model do
  describe "associations" do
    it { should have_many(:sales_people) }
  end
end
