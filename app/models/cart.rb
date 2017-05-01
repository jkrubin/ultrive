class Cart < ApplicationRecord
	has_many :cart_items
	before_save :update_price

	def total_price
		price=0
		cart_items.each do |item|
			if item.valid?
				price+= item.total_price * item.amount
			end
		end	
		return price
	end

	def update_price
		self[:price] = total_price
	end
end
