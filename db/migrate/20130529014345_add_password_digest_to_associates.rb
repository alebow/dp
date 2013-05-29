class AddPasswordDigestToAssociates < ActiveRecord::Migration
  def change
    add_column :associates, :password_digest, :string
  end
end
