class Order < ActiveRecord::Base
	belongs_to :user
	has_one    :transaction
	has_one    :order_detail
end
