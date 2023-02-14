class SalesOffice < ApplicationRecord
  has_many :leads
  has_many :sales_people
end
