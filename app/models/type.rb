class Type < ActiveRecord::Base
	has_many :portfolios, :dependent => :nullify
	validates_presence_of :name
end
