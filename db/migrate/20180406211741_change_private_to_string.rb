class ChangePrivateToString < ActiveRecord::Migration[5.1]
  def change
    change_column :lists, :permissions, :string
  end
end
