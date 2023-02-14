class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :state
      t.integer :sales_office_id, null: true
      t.integer :sales_person_id, null: true

      t.timestamps
    end
  end
end
