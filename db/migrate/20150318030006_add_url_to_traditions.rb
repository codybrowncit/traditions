class AddUrlToTraditions < ActiveRecord::Migration
  def change
    add_column :traditions, :url, :string
  end
end
