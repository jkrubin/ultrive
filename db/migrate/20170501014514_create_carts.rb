class CreateCarts < ActiveRecord::Migration[5.0]
  def change
  	drop_table :carts if self.table_exists?("carts")
    create_table :carts do |t|
      t.decimal :price
      t.string :float

      t.timestamps
    end
  end
end
