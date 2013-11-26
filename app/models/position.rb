class Position < ActiveRecord::Base
	validates_presence_of :name
	has_many :members, :dependent => :nullify
end
