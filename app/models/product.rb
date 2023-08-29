class Product < ApplicationRecord
	validates :name, :price, presence: true
	after_touch do |product|
    	puts "You have touched an object"
  	end
end
