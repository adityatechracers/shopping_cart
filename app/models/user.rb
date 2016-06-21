class User < ActiveRecord::Base
	has_one    :user_detail
	has_many   :orders
	has_many   :carts
	has_many   :transactions

	validates :name,  presence: true, length: { minimum: 6, maximum: 30 }, uniqueness: { case_sensitive: false }
	validates :password, confirmation: true, length: { minimum: 6, maximum: 30 }
	validates :password_confirmation, presence: true
	validates :full_name, presence: true, length: { minimum: 6, maximum: 60 }, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ }

end
