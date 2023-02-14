# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
[Lead, SalesPerson, SalesOffice].each(&:destroy_all)

Locatable::STATES.each do |state|
  SalesOffice.create!(state: state).tap do |sales_office|
    [{name: "Mr. First #{state}"}, {name: "Mrs. Second #{state}"}].each do |attributes|
      sales_office.sales_people.create!(attributes)
    end
  end
end
