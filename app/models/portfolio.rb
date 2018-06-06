class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :maain_image, :thumb_image

	# custom scope
	def self.angular
		where(subtitle: "Angular")
	end

	# custom scope
	scope :ruby_on_rails_portfolio_item, -> { where(subtitle: "Ruby on Rails") }

	after_initialize :set_defaults

	def set_defaults
		self.maain_image ||= "http://via.placeholder.com/600x400"
		self.thumb_image ||= "http://via.placeholder.com/350x200"
	end
end

