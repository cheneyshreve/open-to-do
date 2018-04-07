class AddConfirmableToUsers < ActiveRecord::Migration[5.1]
  def up
      add_column :users, :confirmation_token, :string, unique: true
      add_column :users, :confirmed_at, :datetime
      add_column :users, :confirmation_sent_at, :datetime
      add_index :users, :unlock_token, unique: true
      User.reset_column_information
      User.all.update_all confirmed_at: DateTime.now
  end

  def down
    remove_columns :users, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end
end
