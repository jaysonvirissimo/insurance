class SalesPerson < ApplicationRecord
  belongs_to :sales_office

  validates :name, presence: true
end
