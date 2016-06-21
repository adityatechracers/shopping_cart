class UserDetail < ActiveRecord::Base
	belongs_to :user

	validates :email, presence: true, length: { maximum: 100 }, uniqueness: true, 
	           format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
	validates :shipping_address,  presence: true, length: { minimum: 20 }
	validates :shipping_phone,  presence: true, length: { is: 10 }, numericality: { only_integer: true }
	validates :shipping_alternate_phone,  presence: true, length: { is: 10 }, numericality: { only_integer: true }
	validates :billing_address,  presence: true, length: { minimum: 20 }
	validates :billing_phone,  presence: true, length: { is: 10 }, numericality: { only_integer: true }
	validates :billing_alternate_phone,  presence: true, length: { is: 10 }, numericality: { only_integer: true }           
                    
                    

end
