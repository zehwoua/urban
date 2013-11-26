class Office < ActiveRecord::Base
	has_many :members, dependent: :destroy

	validates_presence_of :country, :city, :address, :email

	mount_uploader :image, ImageUploader
end
