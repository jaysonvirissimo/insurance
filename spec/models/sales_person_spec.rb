require 'rails_helper'

RSpec.describe SalesPerson, type: :model do
  describe "associations" do
    it { should belong_to(:sales_office).required }
  end
end
