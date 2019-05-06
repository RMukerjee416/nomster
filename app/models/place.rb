class Place < ApplicationRecord
	belongs_to :user
	validates :name, length: {minimum: 4}
	validates :address, presence: true
	validates :description, presence: true
end
