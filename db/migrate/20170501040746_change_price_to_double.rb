class ChangePriceToDouble < ActiveRecord::Migration[5.0]
  def change
  	change_column(:carts, :price, :decimal)
   	change_column(:cart_items, :price, :decimal) 
  end
end
