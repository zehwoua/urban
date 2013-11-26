class Press < ActiveRecord::Base
	belongs_to :press_category

	validates_presence_of :title, :description, :press_category

	mount_uploader :image, ImageUploader
end
