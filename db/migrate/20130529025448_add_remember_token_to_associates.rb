class AddRememberTokenToAssociates < ActiveRecord::Migration
  def change
  	add_column :associates, :remember_token, :string
    add_index  :associates, :remember_token
  end
end
