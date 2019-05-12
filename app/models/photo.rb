class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :place

	validates :caption, presence: true, length: { maximum: 140, minimum: 5 }
	validates :picture, presence: true
end
