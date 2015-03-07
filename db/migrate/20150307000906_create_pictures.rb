class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.integer :tradition_id
      t.integer :user_id
      t.boolean :approved

      t.timestamps
    end
  end
end
