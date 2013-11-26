class Member < ActiveRecord::Base

	belongs_to :position
	belongs_to :office
	validates_presence_of :name, :email, :education, :bio, :position, :office

	mount_uploader :avatar, ImageUploader
end
