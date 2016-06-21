class Category < ActiveRecord::Base
	has_and_belongs_to_many :products

	validates :name,  presence: true, length: { maximum: 30 }
end
