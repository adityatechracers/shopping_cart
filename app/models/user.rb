class User < ActiveRecord::Base
	has_one    :user_detail
	has_many   :orders
	has_many   :carts
	has_many   :transactions
end
