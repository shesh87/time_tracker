class Project < ActiveRecord::Base
	has_many :entries #association

	validates :name, uniqueness: true
	validates :name, presence: true
	validates :name, length: {maximum: 30}
	# validates :name, format: (w)

	def self.iron_find(id)
		where(id: id).first
	end

	def self.clean_old
		old = where("created_at < ?", Time.now-1.week)
		old.destroy_all
	end

	def self.last_created_projects(amount)
		order(created_at: :desc).limit(amount)
	end

	def monthly_hours(year, month)
		@date = DateTime.new(year, month)
		@es = entries.where(date: beginning_of_month..end_of_month)
		hours = 0
		minutes = 0
		@entries.each do |entry|
			hours += entry.hour
			minutes += entry.minutes
		end
		minutes/60 + hours
	end

end