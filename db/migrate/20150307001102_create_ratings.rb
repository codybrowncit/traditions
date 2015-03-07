class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :tradition_id
      t.integer :user_id
      t.integer :rating_number

      t.timestamps
    end
  end
end
