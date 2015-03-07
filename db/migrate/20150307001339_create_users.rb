class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :major
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.boolean :admin

      t.timestamps
    end
  end
end
