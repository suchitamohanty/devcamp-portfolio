class Portfolio < ApplicationRecord
	has_many :technologies
	include Placeholder
	validates_presence_of :title, :body, :maain_image, :thumb_image

	# custom scope
	def self.angular
		where(subtitle: "Angular")
	end

	# custom scope
	scope :ruby_on_rails_portfolio_item, -> { where(subtitle: "Ruby on Rails") }

	after_initialize :set_defaults

	def set_defaults
		self.maain_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end
end

