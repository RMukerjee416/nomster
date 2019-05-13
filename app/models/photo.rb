class Photo < ApplicationRecord
	mount_uploader :picture, PictureUploader

	validates :caption, presence: true, length: { maximum: 140, minimum: 5 }
 	validates :picture, presence: true
	
	belongs_to :place
	
end
