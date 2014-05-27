class AddImage5ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image5, :string
  end
end
