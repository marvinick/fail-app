class AddImage4ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image4, :string
  end
end
