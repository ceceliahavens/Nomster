class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :presence => true
	validates :address, :presence => true
	validates :description, :presence => true
	validates_length_of :name, :maximum => 100 
	validates_length_of :name, :minimum => 3
end
