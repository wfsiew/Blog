class RenamePasswordToHashedPassword < ActiveRecord::Migration
  def up
    rename_column :user, :password, :hashed_password
  end

  def down
    rename_column :user, :hashed_password, :password
  end
end
