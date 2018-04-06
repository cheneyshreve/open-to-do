class ChangePrivateToPermissions < ActiveRecord::Migration[5.1]
  def change
    change_table :lists do |t|
      t.rename :private, :permissions
    end
  end
end
