class CreateTraditions < ActiveRecord::Migration
  def change
    create_table :traditions do |t|
      t.string :name
      t.string :description
      t.boolean :approved
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
