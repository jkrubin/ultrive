class CreateCartItems < ActiveRecord::Migration[5.0]
  def change
    drop_table :cart_items if self.table_exists?("cart_items")
    create_table :cart_items do |t|
      t.integer :product_id
      t.integer :cart_id
      t.float :price
      t.integer :amount
      t.datetime :created_at

      t.timestamps
    end
  end
end
