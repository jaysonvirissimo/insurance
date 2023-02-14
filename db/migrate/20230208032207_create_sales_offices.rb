class CreateSalesOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :sales_offices do |t|
      t.string :state

      t.timestamps
    end
  end
end
