class AddFullTitleToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :full_title, :string
  end
end
