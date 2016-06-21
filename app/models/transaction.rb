class Transaction < ActiveRecord::Base
	belongs_to :order
	belongs_to :user

	validates :amount,  presence: true, length: { minimum: 1, maximum: 5 }, numericality: true 
	validates :successful, inclusion: { in: [true, false] }
end
