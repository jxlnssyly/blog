class Article < ApplicationRecord

	before_create :set_visit

	validates :title, presence: true, length: { maximum: 50}
	validates :keyword, presence: true, length: { maximum: 50}

	validates :content, presence: true
	validates :name, presence: true



	private
		def set_visit
			self.visit = 1
			t = Time.now
			self.timeline = t.year.to_s + "年" + t.month.to_s + "月"
		end


end
