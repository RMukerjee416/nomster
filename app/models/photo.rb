class Photo < ApplicationRecord
	mount_uploader :picture, PictureUploader
	validates :picture, presence: true

	belongs_to :user
	belongs_to :place

	validates :caption, presence: true, length: { maximum: 140, minimum: 5 }
	
end
