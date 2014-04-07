class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :amount_in_stock
      t.boolean :promoted

      t.timestamps
    end
  end
end
