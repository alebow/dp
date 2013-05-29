class AddIndexToAssociatesEmail < ActiveRecord::Migration
  def change
  	add_index :associates, :email, unique: true
  end
end
