class OrderDetail < ActiveRecord::Base
	belongs_to :product
	belongs_to :order

	validates :quantity,  presence: true, length: { minimum: 1, maximum: 5 }, numericality: { only_integer: true }
end
