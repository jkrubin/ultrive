class Cart < ApplicationRecord
	has_many :cart_items
	before_save :update_price

	def total_price
		price=0
		cart_items.each do |item|
			if item.valid?
				price+= item.total_price
			end
		end	
		return price
	end

	def update_price
		#new_price = total_price
		#self.update_attributes!(price: 80.1)
		self[:price] = total_price
		#self.save
	end

	def update_and_save
		self[:price] = total_price
		self.save
	end
end
