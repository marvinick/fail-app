class AddImage3ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image3, :string
  end
end
