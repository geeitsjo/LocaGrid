class Idea < ApplicationRecord
	mount_uploader :picture, PictureUploader
	has_many :comments
	has_many :reactions
	belongs_to :user
end
