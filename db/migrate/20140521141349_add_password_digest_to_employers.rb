class AddPasswordDigestToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :password_digest, :string
  end
end
