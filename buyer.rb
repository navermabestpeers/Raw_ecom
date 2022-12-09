require_relative 'user'

class Buyer < User

	def self.buyers(data)
			data.map{ |buyer| Buyer.new(buyer) if buyer[:role] == 'buyer' }.compact
	end
end

