class RenameProfileColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :Profile, :profile
  end
end
