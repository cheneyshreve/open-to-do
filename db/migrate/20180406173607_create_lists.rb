class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :permissions
      t.boolean :private
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
