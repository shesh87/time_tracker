class Entry < ActiveRecord::Base
	belongs_to :project #association

	validates :hours, numericality: true
	validates :minutes, numericality: true
	validates :hours, presence: true
	validates :minutes, presence: true
	validates :date, presence: true
	validates_associated :project

end
