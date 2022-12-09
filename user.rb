require 'date'

class User
  attr_reader :first_name, :last_name, :address, :date_of_birth, :role

  def initialize(opt)
    puts "#{opt}\n\n"
      @first_name = opt[:first_name]
      @last_name = opt[:last_name]
      @date_of_birth = opt[:date_of_birth]
      @address = opt[:address]
      @role = opt[:role]
  end

  def full_name
      "#{first_name } #{ last_name}"
  end

  def age
    (Date.today.year - Date.parse(date_of_birth).year)
  end
end