class Project < ActiveRecord::Base
	has_many :entries

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

end