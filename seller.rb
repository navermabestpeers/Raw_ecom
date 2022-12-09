require_relative 'user'

class Seller < User

	def self.sellers(data)
			data.map{ |seller| Seller.new(seller) if seller[:role] == 'seller' }.compact
	end
end
