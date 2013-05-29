class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :company_id
      t.string :position
      t.boolean :confidential
      t.boolean :open
      t.string :exec_level
      t.string :exec_function
      t.integer :fee
      t.string :person_hired
      t.string :hired_from
      t.integer :comp_base
      t.integer :comp_bonus
      t.string :notes
      t.integer :associate_id

      t.timestamps
    end
  end
end
