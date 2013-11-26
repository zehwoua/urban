class AccoladeCategory < ActiveRecord::Base
	validates_presence_of :name
	has_many :accolades, :dependent => :nullify
end
