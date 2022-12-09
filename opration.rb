require_relative 'data'
require_relative 'user'
require_relative 'product'
require_relative 'buyer'
require_relative 'seller'

class Operation
  include Data
  class << self
    def users
      Data::USERS.map{|user| User.new(user)}
    end

    def products
      Data::PRODUCTS.map{|product| Product.new(product)}
    end

    def buyers
      Buyer.buyers(Data::USERS)
    end

    def sellers
      Seller.sellers(Data::USERS)
    end

    def user_full_name(user)
      User.new(user).full_name
    end

    def find_alex
      Data::USERS.map {|user| User.new(user) if user[:first_name] == "alex"}.compact
    end
  end
end
puts '=================================================USER OBJECTS=================================================' 
puts Operation.users

puts '=================================================PRODUCT OBJECTS =================================================' 

puts Operation.products

puts '=================================================BUYERS FULL NAME================================================='

buyer_name = Buyer.new({:first_name => 'alex', :last_name => 'newman', :date_of_birth => '01-05-1982', :address => 'sapna sangeeta', :role => 'buyer'})
puts buyer_name.full_name

puts '=================================================FULL NAME OF OBJECT================================================='

user_obj = User.new({:first_name => 'alex', :last_name => 'newman', :date_of_birth => '01-05-1982', :address => 'sapna sangeeta', :role => 'buyer'})
puts user_obj.full_name 

puts '=================================================AGE OF OBJECT ================================================='

puts user_obj.age

puts '==========================================RETURNING THE ARRAY OF BUYER OBJECT=========================================' 

puts Operation.buyers

puts '=============================RETURNING THE ARRAY OF SELLER OBJECT======================================'

puts Operation.sellers

puts '=============================RETURN THE OBJECT ID WHOSE FIRST NAME IS ALEX============================='

puts Operation.find_alex