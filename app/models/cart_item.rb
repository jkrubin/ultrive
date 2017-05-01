class CartItem < ApplicationRecord
	belongs_to :cart
	belongs_to :product

	validates :amount, presence: true, numericality: {only_integer: true, greater_than: 0}

	def price
		self[:price]
	end

	def total_price
		price * amount
	end



end
