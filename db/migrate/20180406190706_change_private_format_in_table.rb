class ChangePrivateFormatInTable < ActiveRecord::Migration[5.1]
  def up
    change_column :lists, :private, :boolean
  end

  def down
    change_column :lists, :private, :string
  end
end
