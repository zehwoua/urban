class Accolade < ActiveRecord::Base
	belongs_to :accolade_category

	validates_presence_of :title, :description, :accolade_category

	mount_uploader :image, ImageUploader
end
