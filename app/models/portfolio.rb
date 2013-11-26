class Portfolio < ActiveRecord::Base
	belongs_to :type
	has_many :portfolio_galleries
	
	validates_presence_of :project_name, :shorttext, :year, :country
	
	accepts_nested_attributes_for :portfolio_galleries, allow_destroy: true, :reject_if => lambda { |a| a[:image].blank? }
end
