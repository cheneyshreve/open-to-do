class RenamePermissionsToPrivate < ActiveRecord::Migration[5.1]
  def change
    change_table :lists do |t|
      t.rename :permissions, :private
    end
  end
end
