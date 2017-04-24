class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :description
      t.integer :product_id
      t.integer :gender

      t.timestamps
    end
  end
end
