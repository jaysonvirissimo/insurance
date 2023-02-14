class CreateSalesPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :sales_people do |t|
      t.string :name
      t.references :sales_office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
