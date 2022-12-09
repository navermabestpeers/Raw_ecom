class Product
    attr_reader :name, :seller, :price, :category

		def initialize(opt)
			puts "#{opt}\n\n"
			@name = opt[:name]
			@seller = opt[:seller]
			@price = opt[:price]
			@category = opt[:category]
		end
end
