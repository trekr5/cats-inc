class CreateStockAlerts < ActiveRecord::Migration
  def change
    create_table :stock_alerts do |t|
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
