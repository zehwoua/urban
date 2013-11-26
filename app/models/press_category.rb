class PressCategory < ActiveRecord::Base
	validates_presence_of :name
	has_many :presses, :dependent => :nullify
end
