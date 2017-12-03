class RenameEmailInUsers < ActiveRecord::Migration[5.1]
   def change
    rename_column :users, :email, :last_name
  end
end
