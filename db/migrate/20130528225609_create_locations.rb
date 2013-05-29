class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :company_id
      t.boolean :headquarters
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :country
      t.string :phone_number
      t.string :country_code

      t.timestamps
    end
  end
end
