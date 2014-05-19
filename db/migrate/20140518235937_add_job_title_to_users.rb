class AddJobTitleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :job_title, :string
    add_column :users, :birthday, :integer
    add_column :users, :education, :string
    add_column :users, :story, :string
  end
end
