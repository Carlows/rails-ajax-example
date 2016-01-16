class Policereport < ActiveRecord::Base
	validates :description, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :phonenumber, presence: true
	validates :name, presence: true
end
