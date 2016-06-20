class Product < ActiveRecord::Base
	has_many :cart_items
	has_many :order_details
	has_and_belongs_to_many :categories
end
