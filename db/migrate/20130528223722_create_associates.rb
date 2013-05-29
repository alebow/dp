class CreateAssociates < ActiveRecord::Migration
  def change
    create_table :associates do |t|
      t.string :name
      t.string :email
      t.string :bio
      t.integer :group_id
      t.boolean :admin

      t.timestamps
    end
  end
end
