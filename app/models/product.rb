class Product < ActiveRecord::Base
	has_many :cart_items
	has_many :order_details
	has_and_belongs_to_many :categories

	validates :name,  presence: true
	validates :description, length: { minimum: 20 }
	validates :price,  presence: true, numericality: true, length: { minimum: 1, maximum: 5 }
end
