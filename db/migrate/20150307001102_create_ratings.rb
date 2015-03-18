class CreateRatings < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :picture_id
      t.integer :user_id
      t.boolean :liked

      t.timestamps
    end
  end
end
