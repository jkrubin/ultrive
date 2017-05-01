class ChangePriceToDouble < ActiveRecord::Migration[5.0]
  def change
  	change_column(:carts, :price, :double)
   	change_column(:cart_items, :price, :double) 
  end
end
