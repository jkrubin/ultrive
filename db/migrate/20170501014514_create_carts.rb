class CreateCarts < ActiveRecord::Migration[5.0]
  def change
  	drop_table (:carts, if_exists: true)
    create_table :carts do |t|
      t.string :price
      t.string :float

      t.timestamps
    end
  end
end
