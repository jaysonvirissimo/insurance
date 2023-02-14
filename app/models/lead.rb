class Lead < ApplicationRecord
  belongs_to :sales_office, required: false
  belongs_to :sales_person, required: false

  scope :assigned, -> { where.not(sales_person: nil) }
  scope :unassigned, -> { where(sales_person: nil) }

  validates :name, presence: true
end
