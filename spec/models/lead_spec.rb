require 'rails_helper'

RSpec.describe Lead, type: :model do
  describe "associations" do
    it { should belong_to(:sales_office).optional }
  end
end
